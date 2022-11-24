//
//  TextFieldDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 21/11/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String){
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = text
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
