//
//  ProgramListRouter.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 26.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit.UINavigationController

class ProgramListRouter: Router, ListRouterProtocol {
    
    // MARK: - Public methods
    func show(routeType: ListRouteType) {
        switch routeType {
        case .signIn:
            signInAction()
        case .showFilterVC(let programListViewModel):
            showFilterVC(with: programListViewModel)
        case .showProgramDetails(let programId):
            showProgramDetails(with: programId)
        default:
            break
        }
    }
    
    // MARK: - Private methods
    private func showFilterVC(with programListViewModel: ProgramListViewModel) {
        guard let viewController = ProgramFilterViewController.storyboardInstance(name: .programs) else { return }
        _ = ProgramFilterRouter(parentRouter: self, navigationController: navigationController)
        let viewModel = ProgramFilterViewModel()
        viewController.viewModel = viewModel
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
}
