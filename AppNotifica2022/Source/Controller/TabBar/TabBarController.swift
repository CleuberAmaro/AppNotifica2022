//
//  TabBarController.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
    
}
