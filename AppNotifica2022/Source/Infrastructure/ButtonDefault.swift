//
//  ButtonDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 21/11/22.
//

import Foundation
import UIKit

class ButtomDefault : UIButton {
    
    init (botao: String){
        super.init(frame: .zero)
        initDefault(botao: botao)
    }

    private func initDefault (botao: String){
        self.setTitle(botao, for: .normal)
        self.backgroundColor = .buttonBackGroundColor
        self.layer.cornerRadius = 6
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
