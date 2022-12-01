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
        return homeViewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
