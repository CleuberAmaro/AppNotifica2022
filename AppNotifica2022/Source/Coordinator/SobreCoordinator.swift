//
//  SobreCoordinator.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//

import Foundation
import UIKit

class SobreCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage (systemName: "info.sqare")
        return sobreViewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
