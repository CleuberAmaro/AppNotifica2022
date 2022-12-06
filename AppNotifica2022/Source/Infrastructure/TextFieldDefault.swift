//
//  TextFieldDefault.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 21/11/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    //construtor recebendo somente o placeholder
    init(placeholder: String) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: .default, returnKeyType: .default)
    }
    
    //construtor recebendo e-mail e senha (polimorfismo)
    init(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        super.init(frame: .zero)
        
        initDefault(placeholder: placeholder, keyBoardType: keyBoardType, returnKeyType: returnKeyType)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
