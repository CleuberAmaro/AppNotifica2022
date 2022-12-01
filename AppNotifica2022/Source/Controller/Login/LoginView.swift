//
//  LoginView.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 20/11/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    //MARK: - Initialize
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        //muda a cor de fundo do app de acordo com o estabelecido em UIColor+
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
   
    
    //MARK: - Closures
    var onRegisterTap: ( ( ) -> Void)?
    var onLoginTap: ( ( ) -> Void)?
    
    //MARK: - Properties
   //cria a função com as propriedades da imagem no login
    var imageLogin = ImageDefault (image: "ImageLogin")
    
    //cria a função com as propriedades da label no login
    var imageLabel = LabelDefault (text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
        
    //cria a função com as propriedades da campo de texto para o e-mail
    var emailTextField = TextFieldDefault (text: "E-mail")
    
    //cria a função com as propriedades da campo de texto para a senha
    var passwordTextField = TextFieldDefault (text: "Password")
    
    //cria a função com as propriedades do botão para logar
    var buttonLogar: UIButton = ButtomDefault(text: "LOGAR")
    
    //cria a função com as propriedades do botão para registrar
    var buttonRegistrar: UIButton = ButtomDefault(text: "REGISTRAR")
    
    func setupVisualElements() {
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
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -58.1),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 10),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -23),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 70),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            passwordTextField.widthAnchor.constraint(equalToConstant: 70),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 358),
            buttonLogar.heightAnchor.constraint(equalToConstant: 50),
            buttonLogar.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 358),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 50),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            

        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
