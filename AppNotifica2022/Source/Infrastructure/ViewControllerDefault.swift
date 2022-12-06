//
//  ViewControllerDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 30/11/22.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    //é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //aumenta o título superior da tela
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        //oculta o botão superior do navigationcontroller
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        //oculta o teclado ao clicar fora do textfield
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(self.hideKeyBoardByTappingoutSide))
        
        self.view.addGestureRecognizer(tap)
    
    }
    @objc
    
    func hideKeyBoardByTappingoutSide () {
        self.view.endEditing(true)
    }
}
