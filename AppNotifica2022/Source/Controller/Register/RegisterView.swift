//
//  RegisterView.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 24/11/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault {
    
    //MARK: Initialize
    var onLoginTap: (() -> Void)?
    
    //MARK: - Properties
    
    
    //cria a função com as propriedades da label no login
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se regitrar", font: UIFont.systemFont(ofSize: 27, weight: .regular))
                                   
                                   //(name: "SF Pro Text", size: 20)!)
        
    //cria a função com as propriedades da campo de texto para o e-mail
    var emailTextField = TextFieldDefault (placeholder: "  E-mail", keyBoardType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriedades da campo de texto para a senha
    var passwordTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "  Password", keyBoardType: .emailAddress, returnKeyType: .next)
        
        text.isSecureTextEntry = true
        
        return text
    }()

    
    //cria a função com as propriedades da campo de texto para confirmar a senha
    var confirmPasswordTextField : TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "  Confirm Password", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
       
    //cria a função com as propriedades do botão para logar
    var buttonLogar: UIButton = ButtomDefault(botao: "LOGAR")
    
    //cria a função com as propriedades do botão para registrar
    var buttonRegistrar: UIButton = ButtomDefault(botao: "REGISTRAR")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(confirmPasswordTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)

        NSLayoutConstraint.activate([
            
            imageLabel.widthAnchor.constraint(equalToConstant: 374),
            imageLabel.heightAnchor.constraint(equalToConstant: 60),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            passwordTextField.widthAnchor.constraint(equalToConstant: 374),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmPasswordTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 23),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            

            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        ])
    }
    
    //MARK: - Actions
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}
//configura o botão seguinte do teclado
extension RegisterView: UITextFieldDelegate{
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
            
        } else if textField == passwordTextField {
            self.confirmPasswordTextField.becomeFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
