//
//  UIButton+Extension.swift
//  
//
//  Created by Alexander Zaporozhchenko on 7/3/18.
//  Copyright © 2018 Alexander Zaporozhchenko. All rights reserved.
//

import UIKit


extension UIButton {
    @IBInspectable var adjustFontSizeToWidth: Bool {
        get {
            return titleLabel!.adjustsFontSizeToFitWidth
        }
        set {
            titleLabel!.adjustsFontSizeToFitWidth = newValue
            titleLabel!.lineBreakMode             = .byClipping
        }
    }
}

