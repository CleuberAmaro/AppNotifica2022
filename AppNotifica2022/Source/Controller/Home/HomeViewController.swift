//
//  HomeViewController.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 28/11/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault{
    
    //MARK: - Clousures
   
    //cria uma variável que é do tipo LoginView
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        
    
    }
}
