
//
//  ProgramDetailViewController.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 16.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit
import DZNEmptyDataSet

class ProgramDetailViewController: BaseViewControllerWithTableView {

    let buttonHeight: CGFloat = 45.0
    let buttonBottom: CGFloat = 34.0
    
    // MARK: - View Model
    var viewModel: ProgramDetailViewModel! {
        didSet {
            title = viewModel.getNickname()
            
            updateData()
        }
    }
    
    // MARK: - Buttons
    @IBOutlet var investButton: UIButton! {
        didSet {
            investButton.isHidden = true
        }
    }
    @IBOutlet var withdrawButton: UIButton! {
        didSet {
            withdrawButton.isHidden = true
        }
    }
    @IBOutlet var requestsButton: UIButton! {
        didSet {
            requestsButton.isHidden = true
        }
    }
    
    // MARK: - Variables
    private var historyBarButtonItem: UIBarButtonItem?
    
    // MARK: - Views
    @IBOutlet var buttonsView: UIView!
    @IBOutlet var gradientView: GradientView!
    
    @IBOutlet override var tableView: UITableView! {
        didSet {
            setupTableConfiguration()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showProgressHUD()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar(with: .gray)
        
        setup()
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        setupNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        hideHUD()
    }
    
    // MARK: - Private methods
    private func setup() {
        setupUI()
    }
    
    private func setupUI() {
        title = viewModel.title
        
        guard let viewProperties = viewModel.viewProperties else { return }
        
        historyBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "img_program_history"), style: .done, target: self, action: #selector(historyButtonAction(_:)))
        navigationItem.rightBarButtonItem = viewProperties.isHistoryEnable ? historyBarButtonItem : nil
        
        investButton.isHidden = !viewProperties.isInvestEnable
        withdrawButton.isHidden = !viewProperties.isWithdrawEnable
        requestsButton.isHidden = !viewProperties.hasNewRequests
        gradientView.isHidden = false
        
        if viewProperties.isWithdrawEnable || viewProperties.isInvestEnable || viewProperties.hasNewRequests {
            tableView.contentInset.bottom = buttonHeight + buttonBottom
        } else {
            tableView.contentInset.bottom = 0.0
            gradientView.isHidden = true
        }
    }
    
    private func setupTableConfiguration() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.registerNibs(for: ProgramDetailViewModel.cellModelsForRegistration)
        tableView.registerHeaderNib(for: ProgramDetailViewModel.viewModelsForRegistration)
        
        setupPullToRefresh()
    }
    
    override func fetch() {
        viewModel.fetch { [weak self] (result) in
            self?.hideHUD()
            switch result {
            case .success:
                self?.reloadData()
            case .failure(let reason):
                print("Error with reason: ")
                print(reason ?? "")
            }
        }
    }
    
    override func pullToRefresh() {
        super.pullToRefresh()
        
        fetch()
    }
    
    private func reloadData() {
        DispatchQueue.main.async {
            self.setupUI()
            self.refreshControl?.endRefreshing()
            self.tableView.reloadData()
        }
    }
    
    // MARK: - IBActions
    @IBAction func historyButtonAction(_ sender: UIButton) {
        viewModel.showHistory()
    }
    
    @IBAction func investButtonAction(_ sender: UIButton) {
        viewModel.invest()
    }
    
    @IBAction func withdrawButtonAction(_ sender: UIButton) {
        viewModel.withdraw()
    }
    
    @IBAction func requestsButtonAction(_ sender: UIButton) {
        viewModel.showRequests()
    }
}

extension ProgramDetailViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let model = viewModel.model(at: indexPath) else {
            return UITableViewCell()
        }

        return tableView.dequeueReusableCell(withModel: model, for: indexPath)
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return viewModel.headerHeight(for: section)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let title = viewModel.headerTitle(for: section) else {
            return nil
        }
        
        let header = tableView.dequeueReusableHeaderFooterView() as DefaultTableHeaderView
        header.headerLabel.text = title
        return header
    }
}

extension ProgramDetailViewController: ProgramDetailProtocol {
    func didRequestCanceled() {
        showProgressHUD()
        fetch()
    }
    
    func didWithdrawn() {
        showProgressHUD()
        fetch()
    }
    
    func didInvested() {
        showProgressHUD()
        fetch()
    }
}

extension ProgramDetailViewController: ReloadDataProtocol {
    func didReloadData() {
        reloadData()
    }
}
