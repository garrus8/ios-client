//
//  WalletMoreButtonView.swift
//  genesisvision-ios
//
//  Created by George on 13/02/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit

protocol WalletMoreButtonViewProtocol: class {
    func aboutFeesButtonDidTapped()
}

class WalletMoreButtonView: UIView {
    // MARK: - Variables
    weak var delegate: WalletMoreButtonViewProtocol?
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: TitleLabel! {
        didSet {
            titleLabel.font = UIFont.getFont(.regular, size: 14.0)
            titleLabel.textColor = UIColor.Cell.title
        }
    }
    
    @IBOutlet weak var payFeesWithGvtSwitch: UISwitch! {
        didSet {
            payFeesWithGvtSwitch.onTintColor = UIColor.primary
            payFeesWithGvtSwitch.thumbTintColor = UIColor.Cell.switchThumbTint
            payFeesWithGvtSwitch.tintColor = UIColor.Cell.switchTint
        }
    }

    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = UIColor.Cell.bg
    }
    // MARK: WILL NOT WORK
    // MARK: - Public Methods
    func configure(_ wallet: WalletSummary?) {
        guard let wallet = wallet else { return }//let payFeesWithGvt = wallet.payFeesWithGvt else { return }
        
        titleLabel.text = "Using GVT to pay for fees"
        //payFeesWithGvtSwitch.isOn = payFeesWithGvt
    }
    
    @IBAction func aboutFeesButtonAction(_ sender: UISwitch) {
        delegate?.aboutFeesButtonDidTapped()
    }
}
