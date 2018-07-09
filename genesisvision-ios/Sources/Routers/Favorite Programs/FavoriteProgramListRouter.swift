//
//  FavoriteProgramListRouter.swift
//  genesisvision-ios
//
//  Created by George on 09/07/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit.UINavigationController

class FavoriteProgramListRouter: Router, ProgramListRouterProtocol {
    
    var favoriteProgramListViewController: ProgramListViewController!
    
    // MARK: - Lifecycle
    init(parentRouter: Router?, navigationController: UINavigationController?, favoriteProgramListViewController: ProgramListViewController) {
        super.init(parentRouter: parentRouter, navigationController: navigationController)
        
        self.favoriteProgramListViewController = favoriteProgramListViewController
    }
    
    // MARK: - Public methods
    func show(routeType: ProgramRouteType) {
        switch routeType {
        case .showProgramDetails(let investmentProgramId):
            parentRouter?.showProgramDetails(with: investmentProgramId)
        default:
            break
        }
    }
}
