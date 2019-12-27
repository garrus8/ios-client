//
//  FundAssetsViewModel.swift
//  genesisvision-ios
//
//  Created by George on 29/10/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit.UITableViewHeaderFooterView

final class FundAssetsViewModel {
    // MARK: - Variables
    var title: String = "Structure"
    var fundId: String?
    
    var router: FundRouter!
    private weak var reloadDataProtocol: ReloadDataProtocol?
    
    var canFetchMoreResults = true
    var dataType: DataType = .api
    var assetsCount: String = ""
    var skip = 0
    var take = ApiKeys.take
    
    var assets: [FundAssetsState]?
    
    var totalCount = 0 {
        didSet {
            assetsCount = "\(totalCount) assets"
        }
    }
    
    var viewModels = [FundAssetTableViewCellViewModel]()
    
    // MARK: - Init
    init(withRouter router: FundRouter, assets: [FundAssetsState]? = nil, reloadDataProtocol: ReloadDataProtocol?) {
        self.router = router
        self.assets = assets
        self.reloadDataProtocol = reloadDataProtocol
    }
    
    func hideHeader(value: Bool = true) {
        router.fundViewController.hideHeader(value)
    }
}

// MARK: - TableView
extension FundAssetsViewModel {
    // MARK: - Public methods
    /// Return view models for registration cell Nib files
    var cellModelsForRegistration: [CellViewAnyModel.Type] {
        return [FundAssetTableViewCellViewModel.self]
    }
    
    var viewModelsForRegistration: [UITableViewHeaderFooterView.Type] {
        return [FundAssetsHeaderView.self]
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func modelsCount() -> Int {
        return viewModels.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return modelsCount()
    }
    
    func isMetaTrader5() -> Bool {
        return true
    }
    
    func rowHeight(for row: Int) -> CGFloat {
        return 50.0
    }
    
    func headerHeight(for section: Int) -> CGFloat {
        return 40.0
    }
    
}

// MARK: - Fetch
extension FundAssetsViewModel {
    /// Get TableViewCellViewModel for IndexPath
    func model(for indexPath: IndexPath) -> FundAssetTableViewCellViewModel? {
        return viewModels[indexPath.row]
    }
}


