//
//  SocialFeedTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by Ruslan Lukin on 17.11.2021.
//  Copyright © 2021 Genesis Vision. All rights reserved.
//

import UIKit

struct SocialFeedTableViewCellViewModel {
    let post: Post
    weak var cellDelegate: SocialFeedCollectionViewCellDelegate?
}

//MARK: - Post cell ViewModel
extension SocialFeedTableViewCellViewModel: CellViewModel {
    func setup(on cell: SocialFeedTableViewCell) {
        var eventPost: Bool = false
        
        if let text = post.text, !text.isEmpty {
            cell.postView.textView.isHidden = false
            let muttableText = NSMutableAttributedString(string: text,
                                                         attributes: [NSAttributedString.Key.font: cell.postView.textView.font!, NSAttributedString.Key.foregroundColor: UIColor.white])
            cell.postView.textView.attributedText = muttableText
        } else {
            cell.postView.textView.isHidden = true
        }
        
        if let postId = post._id {
            cell.postId = postId
        }
        
        if let tags = post.tags, !tags.isEmpty {
            if (tags.count == 1 && tags.first?.type == .url) || tags.allSatisfy({ $0.type == .url }) {
                cell.postView.tagsView.isHidden = true
                cell.postView.eventView.isHidden = true
            } else {
                cell.postView.tagsView.isHidden = false
                eventPost = tags.contains(where: { $0.type == .event })
                cell.postView.eventView.isHidden = !eventPost
            }
            cell.postView.postTags = tags
            cell.postView.textView.replaceTagsInText(tags: tags)
        } else {
            cell.postView.tagsView.isHidden = true
            cell.postView.eventView.isHidden = true
        }
        
        cell.delegate = cellDelegate
        
        cell.postView.socialPostViewSizes = postViewSizes()
        cell.postView.updateMiddleViewConstraints()
        
        if let logo = post.author?.logoUrl, let fileUrl = getFileURL(fileName: logo), isPictureURL(url: fileUrl.absoluteString) {
            cell.postView.userImageView.kf.indicatorType = .activity
            cell.postView.userImageView.kf.setImage(with: fileUrl)
        } else {
            cell.postView.userImageView.image = UIImage.profilePlaceholder
        }
        
        if let userName = post.author?.username {
            cell.postView.userNameLabel.text = userName
        }
        
        if let date = post.date {
            cell.postView.dateLabel.text = date.dateForSocialPost
        }
        
        if let postImages = post.images, !postImages.isEmpty {
            cell.postView.galleryView.isHidden = false
            lazy var images = [ImagesGalleryCollectionViewCellViewModel]()
            
            for postImage in postImages {
                if let resizes = postImage.resizes,
                   resizes.count > 1 {
                    let original = resizes.filter({ $0.quality == .original })
                    let hight = resizes.filter({ $0.quality == .high })
                    let medium = resizes.filter({ $0.quality == .medium })
                    let low = resizes.filter({ $0.quality == .low })
                    
                    if let logoUrl = original.first?.logoUrl {
                        images.append(ImagesGalleryCollectionViewCellViewModel(imageUrl: logoUrl,
                                                                               resize: original.first,
                                                                               image: nil,
                                                                               showRemoveButton: false,
                                                                               delegate: nil))
                        continue
                    } else if let logoUrl = hight.first?.logoUrl {
                        images.append(ImagesGalleryCollectionViewCellViewModel(imageUrl: logoUrl,
                                                                               resize: hight.first,
                                                                               image: nil,
                                                                               showRemoveButton: false,
                                                                               delegate: nil))
                        continue
                    } else if let logoUrl = medium.first?.logoUrl {
                        images.append(ImagesGalleryCollectionViewCellViewModel(imageUrl: logoUrl,
                                                                               resize: medium.first,
                                                                               image: nil,
                                                                               showRemoveButton: false,
                                                                               delegate: nil))
                        continue
                    } else if let logoUrl = low.first?.logoUrl {
                        images.append(ImagesGalleryCollectionViewCellViewModel(imageUrl: logoUrl,
                                                                               resize: low.first,
                                                                               image: nil,
                                                                               showRemoveButton: false,
                                                                               delegate: nil))
                    }
                } else if let logoUrl = postImage.resizes?.first?.logoUrl {
                    images.append(ImagesGalleryCollectionViewCellViewModel(imageUrl: logoUrl,
                                                                           resize: postImage.resizes?.first,
                                                                           image: nil,
                                                                           showRemoveButton: false,
                                                                           delegate: nil))
                }
            }
            cell.postView.galleryView.viewModels = images
        } else {
            cell.postView.galleryView.isHidden = true
        }
        
        if let isLiked = post.personalDetails?.isLiked {
            cell.socialActivitiesView.isLiked = isLiked
        }
        
        if let likes = post.likesCount {
            cell.socialActivitiesView.likeCount = likes
        } else {
            cell.socialActivitiesView.likeCount = 0
        }
        
        if let commetsCount = post.comments?.count, commetsCount > 0 {
            cell.socialActivitiesView.commentsLabel.text = String(commetsCount)
        } else {
            cell.socialActivitiesView.commentsLabel.text = ""
        }
        
        if let views = post.impressionsCount, views > 0 {
            cell.socialActivitiesView.viewsLabel.text = String(views)
        } else {
            cell.socialActivitiesView.viewsLabel.text = ""
        }
        
        if let repostsCount = post.rePostsCount, repostsCount > 0 {
            cell.socialActivitiesView.sharesLabel.text = String(repostsCount)
        } else {
            cell.socialActivitiesView.sharesLabel.text = ""
        }
        
        
        var postActions: [SocialPostAction] = []
        
        guard let postId = post._id, let personalDetails = post.personalDetails else {return}
        
        let profileId = UserDefaults.standard.string(forKey: UserDefaultKeys.profileID)
        
        if profileId != post.author?._id?.uuidString {
            postActions.append(.report(postId: postId))
        }
        
        if let canDelete = personalDetails.canDelete, canDelete {
            postActions.append(.delete(postId: postId))
        }
        
        if let canPin = personalDetails.canPin, canPin, let isPinned = post.isPinned {
            isPinned ? postActions.append(.unpin(postId: postId)) : postActions.append(.pin(postId: postId))
        }
        
        if let canEdit = personalDetails.canEdit, canEdit {
            postActions.append(.edit(postId: postId))
        }
        if let url = post.url {
            cell.postLink = ApiKeys.socialPostsPath + url
            postActions.append(contentsOf: [.copyLink(postLink: url), .share(postLink: url)])
        }
        cell.postActions = postActions
    }
    
    func cellSize(spacing: CGFloat, frame: CGRect) -> CGSize {
        let width = frame.width - spacing
        let defaultHeight: CGFloat = 180
        let socialPostViewSizes = postViewSizes()
        
        let cellHeight = socialPostViewSizes.allHeight + defaultHeight
        
        return CGSize(width: width, height: cellHeight)
    }
    
    func postViewSizes() -> SocialPostViewSizes {
        var textHeight: CGFloat = 0
        var imageHeight: CGFloat = 0
        var tagsViewHeight: CGFloat = 0
        let fullTextViewHeight : CGFloat = 0
        
        if let tags = post.tags, !tags.isEmpty {
            if (tags.count == 1 && tags.first?.type == .url) || tags.allSatisfy({ $0.type == .url }) {
                tagsViewHeight = 0
            } else {
                tagsViewHeight = 90
            }
        }
        
        if let isEmpty = post.images?.isEmpty, !isEmpty {
            imageHeight = 250
        }
        
        if let text = post.text, !text.isEmpty {
            let textHeightValue = text.height(forConstrainedWidth: UIScreen.main.bounds.width - 20, font: UIFont.getFont(.regular, size: 18))
            
            if textHeightValue < 25 {
                textHeight = 25
            } else {
                textHeight = textHeightValue
            }
        }
        
        return SocialPostViewSizes(textViewHeight: textHeight, imageViewHeight: imageHeight, tagViewHeight: tagsViewHeight, eventViewHeight: 0, fullTextViewHeight: fullTextViewHeight)
    }
}


class SocialFeedTableViewCell: UITableViewCell {
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let postView: SocialPostView = {
        let view = SocialPostView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let socialActivitiesView: SocialActivitiesView = {
        let view = SocialActivitiesView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    let deletedPostView: UIStackView = {
       let stackView = UIStackView()
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.isHidden = true
        return stackView
    }()
    
    let deletedPostLabel: TitleLabel = {
        let label = TitleLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont.getFont(.semibold, size: 16.0)
        return label
    }()
    
    let undoDeletionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Undo".localized, for: .normal)
        button.setTitleColor(UIColor.primary, for: .normal)
        return button
    }()
    
    var postId: UUID?
    var postActions: [SocialPostAction]?
    var postLink: String?
    weak var delegate: SocialFeedCollectionViewCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0))
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        postView.userImageView.image = UIImage.profilePlaceholder
        postView.tagsView.viewModels = []
    }
    
    private func setup() {
        backgroundColor = UIColor.BaseView.bg
        contentView.backgroundColor = UIColor.Common.darkCell
        undoDeletionButton.addTarget(self, action: #selector(undoDeletion), for: .touchUpInside)
        
        overlayContentView()
        overlayThirdLayerOnBottomView()
    }
    
    private func overlayContentView() {
        contentView.addSubview(postView)
        contentView.addSubview(bottomView)
        contentView.addSubview(deletedPostView)
        deletedPostView.fillSuperview(padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        
        postView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: bottomView.topAnchor, trailing: contentView.trailingAnchor)
        postView.delegate = self
        
        bottomView.anchor(top: nil, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10), size: CGSize(width: 0, height: 65))
        
        deletedPostView.addArrangedSubview(deletedPostLabel)
        deletedPostView.addArrangedSubview(undoDeletionButton)
    }
    
    private func overlayThirdLayerOnBottomView() {
        bottomView.addSubview(socialActivitiesView)
        socialActivitiesView.delegate = self
        socialActivitiesView.fillSuperview(padding: UIEdgeInsets(top: 10, left: 0, bottom: 15, right: 0))
        
        let borderLine = UIView()
        borderLine.translatesAutoresizingMaskIntoConstraints = false
        borderLine.backgroundColor = UIColor.Common.darkTextSecondary
        socialActivitiesView.addSubview(borderLine)
        
        borderLine.anchor(top: socialActivitiesView.topAnchor, leading: socialActivitiesView.leadingAnchor, bottom: nil, trailing: socialActivitiesView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 1))
    }
    
    @objc private func undoDeletion() {
        guard let postId = postId else { return }
        delegate?.undoDeletion(postId: postId)
    }
}

extension SocialFeedTableViewCell: SocialActivitiesViewDelegateProtocol {
    func likeTouched() {
        guard let postId = postId else { return }
        delegate?.likeTouched(postId: postId)
    }
    
    func commentTouched() {
        guard let postId = postId else { return }
        delegate?.commentTouched(postId: postId)
    }
    
    func shareTouched() {
        guard let postId = postId else { return }
        delegate?.shareTouched(postId: postId)
    }
}

extension SocialFeedTableViewCell: SocialPostViewDelegate {
    func imagePressed(index: Int, image: ImagesGalleryCollectionViewCellViewModel) {
        guard let postId = postId else { return }
        delegate?.imagePressed(postId: postId, index: index, image: image)
    }
    
    func postActionsPressed() {
        guard let postId = postId else { return }
        delegate?.postActionsPressed(postId: postId, postActions: postActions, postLink: postLink)
    }
    
    func userOwnerPressed() {
        guard let postId = postId else { return }
        delegate?.userOwnerPressed(postId: postId)
    }
    
    func tagPressed(tag: PostTag) {
        delegate?.tagPressed(tag: tag)
    }
    
    func touchExpandButton() {
    }
    
    func openPost() {
    }
}
