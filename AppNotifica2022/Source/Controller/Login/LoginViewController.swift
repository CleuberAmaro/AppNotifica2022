//
//  LoginViewController.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 20/11/22.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    
    //MARK: - Clousures
    var onRegisterTap: (()-> Void)?
    var onLoginTap: (()-> Void)?
   
    //cria uma variável que é do tipo LoginView
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
    
    }
}
