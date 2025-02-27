//
//  DashboardViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 26.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit.UITableViewHeaderFooterView

final class DashboardViewModel {
    // MARK: - Variables
    var title = "Dashboard"
    
    var inRequestsDelegateManager = InRequestsDelegateManager()
    var isLoading: Bool = false
    
    var skip = 0
    var eventsTake = 10
    var requestsTake = 50
    
    var router: DashboardRouter!
    var dashboard: DashboardSummary? {
        didSet {
            guard let dashboard = dashboard else { return }
            
            if let vc = router.chartsViewController, let pageboyDataSource = vc.pageboyDataSource {
                pageboyDataSource.update(dashboardPortfolioChartValue: dashboard.chart, programRequests: dashboard.requests)
            }
        }
    }
    private var events: [InvestmentEventViewModel]? {
        didSet {
            eventListViewModel?.events = events
        }
    }
    
    private weak var reloadDataProtocol: ReloadDataProtocol?
    
    var assetsTabmanViewModel: AssetsTabmanViewModel?
    var chartsTabmanViewModel: ChartsTabmanViewModel?
    var eventListViewModel: EventListViewModel?
    
    var dateFrom: Date?
    var dateTo: Date?
    
    var bottomViewType: BottomViewType = .sort
    
    // MARK: - Init
    init(withRouter router: DashboardRouter) {
        self.router = router
        self.reloadDataProtocol = router.programListViewController
        assetsTabmanViewModel = AssetsTabmanViewModel(withRouter: router)
//        chartsTabmanViewModel = ChartsTabmanViewModel(withRouter: router, dashboardPortfolioChartValue: dashboard?.chart)
        eventListViewModel = EventListViewModel(withRouter: router, events: events)
        
        NotificationCenter.default.addObserver(self, selector: #selector(enableTwoFactorNotification(notification:)), name: .twoFactorEnable, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: .twoFactorEnable, object: nil)
    }
    
    // MARK: - Public methods
    func deselectChart() {
        if let vc = router.chartsViewController, let pageboyDataSource = vc.pageboyDataSource {
            pageboyDataSource.deselectChart()
        }
    }
    
    func didSelectRequest(at indexPath: IndexPath) {
        guard let requests = inRequestsDelegateManager.programRequests?.requests, !requests.isEmpty else {
            return
        }
        
        let request = requests[indexPath.row]
        if let assetId = request.programId?.uuidString, let type = request.programType, let assetType = AssetType(rawValue: type.rawValue) {
            router.showAssetDetails(with: assetId, assetType: assetType)
        }
    }
    
    func didSelectEvent(at assetId: String, assetType: AssetType) {
        router.showAssetDetails(with: assetId, assetType: assetType)
    }
    // MARK: - Private methods
    @objc private func enableTwoFactorNotification(notification: Notification) {
        NotificationCenter.default.removeObserver(self, name: .twoFactorEnable, object: nil)
        
        router.showTwoFactorEnable()
    }
}

// MARK: - Navigation
extension DashboardViewModel {
    func logoImageName() -> String? {
        let imageName = "img_nodata_list"
        return imageName
    }
    
    func noDataText() -> String {
        return "You don’t have any assets yet"
    }
    
    func noDataImageName() -> String? {
        return logoImageName()
    }
    
    func noDataButtonTitle() -> String {
        let text = "Browse assets"
        return text
    }
    
    func showProgramList() {
        router.show(routeType: .assetList)
    }
    
    func showNotificationList() {
        router.show(routeType: .notificationList)
    }
}

// MARK: - Fetch
extension DashboardViewModel {
    // MARK: - Public methods
    func refresh(completion: @escaping CompletionBlock) {
        updatePlatformInfo()
        fetchEvents { [weak self] (result) in
            self?.fetch(completion)
        }
    }
    // MARK: - Private methods
    private func updatePlatformInfo() {
        PlatformManager.shared.getPlatformInfo(completion: { (model) in })
    }
    
    func updateProgramList() {
        if let viewModel = router.programListViewController?.viewModel {
            viewModel.filterModel.dateRangeModel.dateFrom = dateFrom
            viewModel.filterModel.dateRangeModel.dateTo = dateTo
            
            router.programListViewController?.fetch()
        }
    }
    func updateFundList() {
        if let viewModel = router.fundListViewController?.viewModel {
            viewModel.filterModel.dateRangeModel.dateFrom = dateFrom
            viewModel.filterModel.dateRangeModel.dateTo = dateTo
            
            router.fundListViewController?.fetch()
        }
    }
    
    func updateSignals() {
        if signalEnable {
            router.signalListViewController?.fetch()
            router.signalOpenTradesViewController?.fetch()
            router.signalTradesViewController?.fetch()
            router.signalTradingLogViewController?.fetch()
        }
    }
    
    func updateLists() {
        updateProgramList()
        updateFundList()
        updateSignals()
    }
    
    private func fetch(_ completion: @escaping CompletionBlock) {
        isLoading = true
        
//        let chartCurrency = InvestorAPI.ChartCurrency_v10InvestorGet(rawValue: getSelectedCurrency())
//        let balancePoints = 30
//        let programsPoints = 7
        
//        DashboardDataProvider.getDashboardSummary(chartCurrency: chartCurrency, from: dateFrom, to: dateTo, balancePoints: balancePoints, programsPoints: programsPoints, eventsTake: eventsTake, requestsSkip: skip, requestsTake: requestsTake, completion: { [weak self] (dashboard) in
//            guard let dashboard = dashboard else { return completion(.failure(errorType: .apiError(message: nil))) }
//            self?.dashboard = dashboard
//
//            completion(.success)
//        }, errorCompletion: completion)
    }
    
    private func fetchEvents(_ completion: @escaping CompletionBlock) {
//        DashboardDataProvider.getEvents(with: nil, from: nil, to: nil, eventLocation: .dashboard, skip: skip, take: eventsTake, completion: { [weak self] (portfolioEvents) in
//            guard portfolioEvents != nil else {
//                return ErrorHandler.handleApiError(error: nil, completion: completion)
//            }
//            
//            self?.events = portfolioEvents?.events
//            
//            completion(.success)
//        }, errorCompletion: completion)
    }
}

extension DashboardViewModel: ReloadDataProtocol {
    func didReloadData() {
        refresh { (result) in }
    }
}

