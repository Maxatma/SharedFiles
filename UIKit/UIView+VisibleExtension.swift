//
//  UIView+VisibleExtension.swift
//  
//
//  Created by Alexandr on 7/27/17.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import UIKit


func isVisible(view: UIView) -> Bool {
    
    func isVisible(view: UIView, inView: UIView?) -> Bool {
        guard let inView = inView else { return true }
        let viewFrame    = inView.convert(view.bounds, from: view)
        
        if viewFrame.intersects(inView.bounds) {
            return isVisible(view: view, inView: inView.superview)
        }
        return false
    }
    return isVisible(view: view, inView: view.superview)
}

