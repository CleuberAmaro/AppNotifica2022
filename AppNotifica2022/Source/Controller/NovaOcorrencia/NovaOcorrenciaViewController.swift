//
//  NovaOcorrenciaViewController.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 05/12/22.
//


import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault{
    
    //MARK: - Clousures
    
    //cria uma variável que é do tipo LoginView
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        novaOcorrenciaView.onCameraTap = {
            EscolherImagem() .selecionadorImagem(self)  { imagem in novaOcorrenciaView.setImage(image: imagem)
        }
    }
        return novaOcorrenciaView
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"        
    }
}

