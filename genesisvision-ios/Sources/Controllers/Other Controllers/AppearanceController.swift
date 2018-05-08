//
//  AppearanceController.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 22.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import SimulatorStatusMagic

enum ThemeType {
    case `default`, dark
}

enum NavBarType {
    case white, primary, gray
}

struct NavBarColors {
    var tintColor: UIColor
    var backgroundColor: UIColor
    var textColor: UIColor
    var subtitleColor: UIColor
}

struct AppearanceController {
    static var theme: ThemeType = .default
    
    static func setupAppearance() {
        isDebug
            ? SDStatusBarManager.sharedInstance().enableOverrides()
            : SDStatusBarManager.sharedInstance().disableOverrides()
        
        setupNavigationBar()
        setupTabBar()
        turnIQKeyboardManager(enable: true, enableAutoToolbar: true, shouldResignOnTouchOutside: true)
        
        setupSegmentedControl()
        setupPlateCell()
        setupShadowView()
        setupEasyTipView()
    }
    
    // NavigationBar
    static func setupNavigationBar(with type: NavBarType = .gray) {
        let colors = UIColor.NavBar.colorScheme(with: type)
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: colors.textColor,
                                                            NSAttributedStringKey.font: UIFont.getFont(.bold, size: 18)]
        
        if #available(iOS 11.0, *) {
            UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: colors.textColor]
        }
        
        UINavigationBar.appearance().tintColor = colors.tintColor
        UINavigationBar.appearance().backgroundColor = colors.backgroundColor
        
        UINavigationBar.appearance().backIndicatorImage = #imageLiteral(resourceName: "img_back_arrow")
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "img_back_arrow")
    }
    
    
    // TabBar
    private static func setupTabBar() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.TabBar.unselected,
                                                          NSAttributedStringKey.font: UIFont.getFont(.bold, size: 8)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.TabBar.tint,
                                                          NSAttributedStringKey.font: UIFont.getFont(.bold, size: 8)], for: .selected)

        UITabBar.appearance().tintColor = UIColor.TabBar.tint
        UITabBar.appearance().backgroundColor = UIColor.TabBar.bg
    }
    
    // MARK: - IQKeyboardManager
    private static func turnIQKeyboardManager(enable: Bool, enableAutoToolbar: Bool, shouldResignOnTouchOutside: Bool) {
        IQKeyboardManager.sharedManager().enable = enable
        IQKeyboardManager.sharedManager().enableAutoToolbar = enableAutoToolbar
        IQKeyboardManager.sharedManager().shouldResignOnTouchOutside = shouldResignOnTouchOutside
        IQKeyboardManager.sharedManager().keyboardDistanceFromTextField = 32.0
        IQKeyboardManager.sharedManager().toolbarTintColor = UIColor.primary
        IQKeyboardManager.sharedManager().toolbarDoneBarButtonItemText = "Dismiss"
        IQKeyboardManager.sharedManager().placeholderFont = UIFont.getFont(.regular, size: 14.0)
    }
    
    // MARK: - SegmentedControl
    private static func setupSegmentedControl() {
        let segmentedControlAppearance = ScrollableSegmentedControl.appearance()
        segmentedControlAppearance.segmentContentColor = UIColor.Font.light
        segmentedControlAppearance.selectedSegmentContentColor = UIColor.primary
        segmentedControlAppearance.backgroundColor = UIColor.clear
        segmentedControlAppearance.tintColor = UIColor.primary
        segmentedControlAppearance.borderColor = UIColor.primary
        segmentedControlAppearance.borderWidth = 2
    }
    
    // MARK: - EasyTipView
    private static func setupEasyTipView() {
        var preferences = EasyTipView.Preferences()
        preferences.drawing.font = UIFont.getFont(.regular, size: 15)
        preferences.drawing.foregroundColor = UIColor.Font.white
        preferences.drawing.backgroundColor = UIColor.primary
        preferences.drawing.arrowPosition = EasyTipView.ArrowPosition.bottom
        preferences.drawing.shadowColor = UIColor.Font.dark
        preferences.drawing.shadowOpacity = 0.5
        preferences.drawing.shadowRadius = 3.0
        preferences.drawing.shadowOffset = CGSize(width: 2.0, height: 2.0)
        preferences.hasShadow = true
        
        preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: -15)
        preferences.animating.showInitialAlpha = 0
        preferences.animating.showDuration = 0.3
        preferences.animating.dismissDuration = 0.3
        preferences.animating.captureAllTaps = true
        
        EasyTipView.globalPreferences = preferences
    }
    
    // MARK: - PlateCell
    private static func setupPlateCell() {
        PlateTableViewCell.appearance().plateAppearance =
            PlateTableViewCellAppearance(cornerRadius: Constants.SystemSizes.cornerSize,
                                         horizontalMarginValue: 8,
                                         verticalMarginValues: 4,
                                         backgroundColor: UIColor.Cell.bg,
                                         selectedBackgroundColor: UIColor.Background.gray)
    }
    
    // MARK: - ShadowView
    private static func setupShadowView() {
        ShadowView.appearance().shadowViewAppearance =
            ShadowViewAppearance(shadowOpacity: 0.14,
                                 shadowColor: UIColor.Font.black,
                                 shadowRadius: 3)
    }
}
