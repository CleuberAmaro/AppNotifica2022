//
//  UIColor+.swift
//  AppNotifica2022
//
//  Created by Cleuber Amaro on 21/11/22.
//

import Foundation
import UIKit

extension UIColor {
    
    static var viewBackgroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    
    static var buttonBackgroundColor: UIColor {
        UIColor(named: "buttonBackgroundColor") ?? .black
    }
    
    static var textFieldBackgroundColor: UIColor {
        UIColor(named: "textFieldBackgroundColor") ?? .purple
    }
    
    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .white
    }
}
