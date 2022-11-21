//
//  LoginView.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 20/11/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    
    
   //cria a função com as propriedades da imagem no login
    var imageLogin: UIImageView = {
        let imagem = UIImageView ()
        imagem.image = UIImage(named: "ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
        return imagem
    }()
    
    //cria a função com as propriedades da label no login
    var imageLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //cria a função com as propriedades da campo de texto para o e-mail
    var emailTextField: UITextField = {
        let textField = UITextField ()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "E-mail"
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    //cria a função com as propriedades da campo de texto para a senha
    var passwordTextField: UITextField = {
        let textField = UITextField ()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "Password"
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    //cria a função com as propriedades do botão para logar
    var buttonLogar: UIButton = {
        let button = UIButton ()
        button.setTitle("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //cria a função com as propriedades do botão para registrar
    var buttonRegistrar: UIButton = {
        let button = UIButton ()
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    func setupVisualElements() {
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)

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
    
}
