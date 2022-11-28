//
//  RegisterCoordinator.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 24/11/22.
//

import Foundation
import UIKit
class RegisterCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController ()
        self .navigationController.pushViewController(viewController, animated: true)
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
    }
    
    func gotoLogin() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
