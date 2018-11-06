//
//  PortfolioViewController.swift
//  genesisvision-ios
//
//  Created by George on 17/09/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit
import Charts

class PortfolioViewController: BaseViewController {

    // MARK: - View Model
    var viewModel: PortfolioViewModel!
    
    var vc: UIViewController!
    
    private var bottomAssetsView: UIView?
    private var tapGesture: UITapGestureRecognizer?
    // MARK: - Outlets
    @IBOutlet weak var amountTitleLabel: SubtitleLabel!
    @IBOutlet weak var amountValueLabel: TitleLabel!
    @IBOutlet weak var amountCurrencyLabel: MediumLabel!
    
    @IBOutlet weak var changeTitleLabel: SubtitleLabel!
    @IBOutlet weak var changePercentLabel: TitleLabel! {
        didSet {
            changePercentLabel.textColor = UIColor.Cell.greenTitle
            changePercentLabel.font = UIFont.getFont(.semibold, size: 12.0)
        }
    }
    @IBOutlet weak var changeValueLabel: TitleLabel!
    @IBOutlet weak var changeCurrencyLabel: MediumLabel!
    
    @IBOutlet weak var inRequestsStackView: UIStackView! {
        didSet {
            inRequestsStackView.isHidden = true
        }
    }
    @IBOutlet weak var inRequestsButton: UIButton! {
        didSet {
            inRequestsButton.isHidden = true
        }
    }
    @IBOutlet weak var inRequestsTitleLabel: SubtitleLabel!
    @IBOutlet weak var inRequestsValueLabel: TitleLabel!
    @IBOutlet weak var inRequestsCurrencyLabel: MediumLabel!
    
    @IBOutlet weak var chartView: ChartView! {
        didSet {
            chartView.backgroundColor = UIColor.BaseView.bg
            chartView.isHidden = true
            chartView.isUserInteractionEnabled = true
            chartView.delegate = self
        }
    }
    
    let circleView: UIView = {
        let circleView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.SystemSizes.chartCircleHeight, height: Constants.SystemSizes.chartCircleHeight))
        circleView.backgroundColor = UIColor.BaseView.bg
        circleView.layer.cornerRadius = circleView.bounds.height / 2
        circleView.layer.borderColor = UIColor.Common.white.cgColor
        circleView.layer.borderWidth = 2.0
        circleView.isHidden = true
        circleView.clipsToBounds = true
        
        return circleView
    }()
    
    @IBOutlet weak var chartViewHeightConstraint: NSLayoutConstraint! {
        didSet {
            chartViewHeightConstraint.constant = 150.0
            chartView.isHidden = true
        }
    }
    @IBOutlet weak var inRequeststViewHeightConstraint: NSLayoutConstraint!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
        bottomViewType = .dateRange
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        deselectChart()
    }

    // MARK: - Public methods
    func updateUI() {
        setupUI()
    }
    
    func updateViewConstraints(_ yOffset: CGFloat) {
        
    }
    
    func hideChart(_ value: Bool) {
        chartViewHeightConstraint.constant = value ? 0.0 : 150.0
        chartView.isHidden = value
    }
    
    // MARK: - Private methods
    private func setup() {
        
        //Selected Chart Assets Bottom Sheet View
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(deselectChart))
        tapGesture?.numberOfTapsRequired = 1
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tapGesture!)
        
        chartView.addSubview(circleView)
    }
    
    private func setupUI() {
        if let dashboardChartValue = viewModel.dashboardChartValue {
            if let lineChartData = dashboardChartValue.balanceChart, let barChartData = dashboardChartValue.investedProgramsInfo {
                chartView.setup(chartType: .dashboard, lineChartData: lineChartData, barChartData: barChartData, dateRangeType: PlatformManager.shared.dateRangeType, dateFrom: PlatformManager.shared.dateFrom, dateTo: PlatformManager.shared.dateTo)
            }
            
            amountTitleLabel.text = "Value"
            if let value = dashboardChartValue.value {
                amountValueLabel.text = value.rounded(withType: .gvt).toString() + " " + Constants.gvtString
            }
            if let valueCurrency = dashboardChartValue.valueCurrency, let selectedCurrency = CurrencyType(rawValue: getSelectedCurrency()) {
                amountCurrencyLabel.text = valueCurrency.rounded(withType: selectedCurrency).toString() + " \(getSelectedCurrency())"
            }
            
            changeTitleLabel.text = "Change"
            if let changePercent = dashboardChartValue.changePercent {
                changePercentLabel.text = changePercent.rounded(withType: .undefined).toString() + "%"
            }
            if let changeValue = dashboardChartValue.changeValue {
                changeValueLabel.text = changeValue.rounded(withType: .gvt).toString() + " " + Constants.gvtString
            }
            if let changeValueCurrency = dashboardChartValue.changeValueCurrency, let selectedCurrency = CurrencyType(rawValue: getSelectedCurrency()) {
                changeCurrencyLabel.text = changeValueCurrency.rounded(withType: selectedCurrency).toString() + " \(getSelectedCurrency())"
            }
        
            if let programRequests = viewModel.programRequests {
                inRequestsTitleLabel.text = "In Requests"
                if let totalValue = programRequests.totalValue {
                    inRequestsValueLabel.text = totalValue.rounded(withType: .gvt).toString() + " " + Constants.gvtString
                }
                
                if let totalValue = programRequests.totalValue, let rate = dashboardChartValue.rate, let selectedCurrency = CurrencyType(rawValue: getSelectedCurrency()) {
                    let inRequestsCurrency = totalValue * rate
                    inRequestsCurrencyLabel.text = inRequestsCurrency.rounded(withType: selectedCurrency).toString() + " \(getSelectedCurrency())"
                }
            }
        }
    }
    
    private func setupSelectedChartAssetsBottomSheetView() {
        bottomSheetController = BottomSheetController()
        bottomSheetController.isDraggable = false
        bottomSheetController.bottomSheetControllerProtocol = self
        let closeImage = #imageLiteral(resourceName: "img_event_program_closed")
        bottomSheetController.addNavigationBar("Assets", centerSubtitle: "", normalImage: closeImage, buttonAction: #selector(deselectChart), buttonTarget: self)
        bottomSheetController.lineViewIsHidden = true
        
        bottomSheetController.addTableView(isScrollEnabledInSheet: true) { [weak self] tableView in
            tableView.separatorStyle = .none
            tableView.registerNibs(for: viewModel.cellModelsForRegistration)
            tableView.allowsSelection = false
            
            if let selectedChartAssetsDelegateManager = self?.viewModel.selectedChartAssetsDelegateManager {
                selectedChartAssetsDelegateManager.tableView = tableView
                tableView.delegate = selectedChartAssetsDelegateManager
                tableView.dataSource = selectedChartAssetsDelegateManager
            }
        }
    }
    
    private func configureConstraints(containerView: UIView, view: UIView) {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.transform = CGAffineTransform.identity
        
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: chartView.bottomAnchor, constant: 10.0).isActive = true
//        containerView.topAnchor.constraint(greaterThanOrEqualTo: chartView.bottomAnchor, constant: 10.0).isActive = true
//        containerView.heightAnchor.constraint(lessThanOrEqualToConstant: 300.0).isActive = true
//        containerView.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func hideInRequestStackView(_ value: Bool) {
        if let programRequests = viewModel.programRequests, let requests = programRequests.requests, requests.count == 0, inRequestsStackView.isHidden { return }
        
        self.inRequestsButton.isHidden = value
        self.inRequestsStackView.isHidden = value
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    @objc func deselectChart() {
        if let highlighted = chartView?.highlighted, highlighted.count > 0 {
            tapGesture?.isEnabled = false
            hideBottomAssetsView()
            circleView.isHidden = true
            hideInRequestStackView(false)
            chartView.highlightValues([])
            updateUI()
        }
    }
    
    private func selectChart(_ entry: ChartDataEntry) {
        tapGesture?.isEnabled = true

        let date = Date(timeIntervalSince1970: entry.x)
        
        let results = viewModel.selectChart(date)
        
        if let valueChartBar = results.0, valueChartBar.topAssets != nil {
            showBottomAssetsView()
        } else {
            hideBottomAssetsView()
        }
        
        if let chartSimple = results.1, let selectedValue = chartSimple.value {
            if let firstChartSimple = viewModel.dashboardChartValue?.balanceChart?.first, let firstValue = firstChartSimple.value, let rate = viewModel.dashboardChartValue?.rate {
                
                let selectedValueInCurrency = selectedValue * rate
                let changeValue = selectedValue - firstValue
                let changeValueCurrency = changeValue * rate
                
                amountValueLabel.text = selectedValue.rounded(withType: .gvt).toString() + " " + Constants.gvtString
                
                let currency = getSelectedCurrency()
                if let selectedCurrency = CurrencyType(rawValue: currency) {
                    amountCurrencyLabel.text = selectedValueInCurrency.rounded(withType: selectedCurrency).toString() + " \(currency)"
                    
                    changeCurrencyLabel.text = changeValueCurrency.rounded(withType: selectedCurrency).toString() + " \(currency)"
                }
                
                changePercentLabel.text = getChangePercent(oldValue: firstValue, newValue: selectedValue)

                changeValueLabel.text = changeValue.rounded(withType: .gvt).toString() + " " + Constants.gvtString
            }
        } else {
            
        }
    }
    
    @objc private func hideBottomAssetsView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.bottomAssetsView?.alpha = 0.0
        }) { (result) in
            self.bottomAssetsView?.removeFromSuperview()
            self.bottomAssetsView = nil
        }
    }
    
    private func showBottomAssetsView() {
        if self.bottomAssetsView == nil {
            circleView.isHidden = false
            
            hideInRequestStackView(true)
        }
        
        let window = UIApplication.shared.windows[0] as UIWindow
        if let vc = window.rootViewController, self.bottomAssetsView == nil {
            setupSelectedChartAssetsBottomSheetView()
            
            self.bottomAssetsView = bottomSheetController.containerView
            self.bottomAssetsView?.alpha = 0.0
        
            guard self.bottomAssetsView != nil else { return }
            vc.view.addSubview(self.bottomAssetsView!)

            self.configureConstraints(containerView: self.bottomAssetsView!, view: vc.view)
            self.bottomAssetsView?.layoutIfNeeded()
            self.bottomSheetController.viewDidLayoutSubviews()
        
            UIView.animate(withDuration: 0.3) {
                self.bottomAssetsView?.alpha = 1.0
            }
        }
        
        if let centerBarLabel = bottomSheetController.centerBarLabel, let date = self.viewModel.selectedValueChartBar?.date {
            centerBarLabel.text = date.dateAndTimeFormatString
        }
    }
    
    // MARK: - Actions
    @IBAction func inRequestsButtonAction(_ sender: UISwitch) {
        viewModel.showRequests()
    }
}

extension PortfolioViewController: ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        circleView.isHidden = false
        circleView.center = CGPoint(x: highlight.xPx, y: highlight.yPx)
        
        selectChart(entry)
        
        self.chartView.animationEnable = false
    }
    
    func chartValueNothingSelected(_ chartView: ChartViewBase) {
        hideBottomAssetsView()
        circleView.isHidden = true
        hideInRequestStackView(false)
        updateUI()
    }
}

extension PortfolioViewController: BottomSheetControllerProtocol {
    func didHide() {
        deselectChart()
        bottomAssetsView?.removeFromSuperview()
        bottomAssetsView = nil
    }
}
