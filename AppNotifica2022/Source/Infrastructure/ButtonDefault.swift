//
//  ButtonDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 21/11/22.
//

import Foundation
import UIKit

class ButtomDefault : UIButton {
    init (text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String){
        self.setTitle(text, for: .normal)
        self.backgroundColor = .buttonBackgroundColor
        self.layer.cornerRadius = 6
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
