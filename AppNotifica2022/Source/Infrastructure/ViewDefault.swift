//
//  ViewDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 30/11/22.
//

import Foundation
import UIKit

class ViewDefault: UIView{
    
    //MARK: - Initialize
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        //muda a cor de fundo do app de acordo com o estabelecido em UIColor+
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
   
    func setupVisualElements() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
