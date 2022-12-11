//
//  TabBarCoordinator.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = TabBarController()
        
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabBarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaCoordinator.novaOcorrenciaViewController, sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabBarController, animated: true)
    }
}
