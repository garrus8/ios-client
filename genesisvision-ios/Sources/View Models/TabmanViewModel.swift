//
//  TabmanViewModel.swift
//  genesisvision-ios
//
//  Created by George on 07/05/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit
import Pageboy
import Tabman

protocol TabmanViewModelProtocol {
    func initializeViewControllers()
}

class TabmanViewModel: TabmanViewModelProtocol {
    // MARK: - Variables
    var title: String = ""
    
    var style: TabmanBar.Style = .buttonBar
    var isScrollEnabled = true
    var router: Router!
    var viewControllers = [UIViewController]()
    
    var viewControllersCount: Int = 1
    
    var itemTitles = [String]()
    var defaultPage: PageboyViewController.Page? = .first
    
    // MARK: - Init
    init(withRouter router: Router, viewControllersCount: Int = 1, defaultPage: Int = 0) {
        self.router = router
        self.defaultPage = .at(index: defaultPage)
        self.viewControllersCount = viewControllersCount
        
        initializeViewControllers()
    }
    
    // MARK: - Public methods
    func initializeViewControllers() {
        //Set ViewControllers
    }
}
