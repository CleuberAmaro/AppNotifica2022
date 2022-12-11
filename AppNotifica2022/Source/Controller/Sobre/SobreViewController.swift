//
//  SobreViewController.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault{
    
    //MARK: - Clousures
    
    //cria uma variável que é do tipo LoginView
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        return sobreView
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        
    }
}
