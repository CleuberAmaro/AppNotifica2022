//
//  HomeView.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 28/11/22.
//

import Foundation
import UIKit

class HomeView: UIView {
    //MARK: - Closures
    
    //MARK: - Properties
    
    //MARK: - Inits
    
    override init(frame: CGRect){
         super.init(frame: frame)
        setupVisualElements()
        self.backgroundColor = .viewBackgroundColor
    }
    
    required init? (coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
    
     func setupVisualElements() {
        //setupVisualElements()
    }
}
