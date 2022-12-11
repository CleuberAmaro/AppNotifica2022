//
//  HomeCoordinator.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 28/11/22.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
   
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
    }
}
