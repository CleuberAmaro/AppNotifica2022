//
//  LoginView.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 20/11/22.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    //MARK: - Closures
    var onRegisterTap: ( ( ) -> Void)?
    var onLoginTap: ( ( ) -> Void)?
    
    //MARK: - Properties
    //cria a função com as propriedades da imagem no login
    var imageLogin = ImageDefault (image: "ImageLogin")
    
    //cria a função com as propriedades da label no login
    var imageLabel = LabelDefault (text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    //cria a função com as propriedades da campo de texto para o e-mail
    var emailTextField = TextFieldDefault (placeholder: "E-mail", keyBoardType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriedades da campo de texto para a senha
    var passwordTextField : TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "  Password", keyBoardType: .emailAddress, returnKeyType: .done)
        
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
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
        imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
        
        imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
        imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
        imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
        imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
                        
       imageLabel.widthAnchor.constraint(equalToConstant: 100),
       imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
       imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
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
                        
                        buttonLogar.widthAnchor.constraint(equalToConstant: 374),
                        buttonLogar.heightAnchor.constraint(equalToConstant: 60),
                        buttonLogar.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
                        buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                        buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                        
                        buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
                        buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
                        buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
                        buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                        buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            
            
            
        ])
    }
    
   
    //MARK: - Actions
    
    @objc
    private func registerTap() {
        onRegisterTap?()
    }
    
    @objc
    private func loginTap() {
        onLoginTap?()
    }
}

//configura o botão seguinte do teclado
extension LoginView: UITextFieldDelegate{
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
