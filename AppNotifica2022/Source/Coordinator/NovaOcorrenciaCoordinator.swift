//
//  NovaOcorrenciaCoordinator.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//

import Foundation
import UIKit

class NovaOcorrenciaCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    lazy var novaOcorrenciaViewController: NovaOcorrenciaViewController = {
        let viewController = NovaOcorrenciaViewController()
        
        viewController.tabBarItem.title = "Nova Ocorrência"
        viewController.tabBarItem.image = UIImage (systemName: "note.text.badge.plus")
        
        return viewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
