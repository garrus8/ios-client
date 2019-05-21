//
//  DashboardSignalListDelegateManager.swift
//  genesisvision-ios
//
//  Created by George on 14/05/2019.
//  Copyright © 2019 Genesis Vision. All rights reserved.
//

import UIKit.UITableView

final class DashboardSignalListDelegateManager: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var viewModel: DashboardSignalListViewModel?
    weak var delegate: DelegateManagerProtocol?
    
    init(with viewModel: DashboardSignalListViewModel) {
        super.init()
        
        self.viewModel = viewModel
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let modelsCount = viewModel?.modelsCount(), modelsCount >= indexPath.row else {
            return
        }
        
        viewModel?.showDetail(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let model = viewModel?.model(at: indexPath) else {
            return TableViewCell()
        }
        
        return tableView.dequeueReusableCell(withModel: model, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        delegate?.delegateManagerTableView(tableView, willDisplay: cell, forRowAt: indexPath)
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = viewModel?.numberOfRows(in: section) ?? 0
        tableView.isScrollEnabled = numberOfRows > 0
        return numberOfRows
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel?.numberOfSections() ?? 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        delegate?.delegateManagerScrollViewDidScroll(scrollView)
        scrollView.isScrollEnabled = scrollView.contentOffset.y > -44.0
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        delegate?.delegateManagerScrollViewWillBeginDragging(scrollView)
        let translation = scrollView.panGestureRecognizer.translation(in: scrollView.superview)
        if translation.y > 0 {
            //            print("down")
            scrollView.isScrollEnabled = scrollView.contentOffset.y > -44.0
        } else {
            //            print("up")
            scrollView.isScrollEnabled = scrollView.contentOffset.y >= -44.0
        }
    }
}

