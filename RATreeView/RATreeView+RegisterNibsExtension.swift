//
//  RegisterNibsExtension.swift
//  
//
//  Created by Alexander Zaporozhchenko on 1/1/19.
//  Copyright 2017 . All rights reserved.
//

import RATreeView

extension RATreeView {
    func registerNibsFor(classes: [AnyClass]) {
        classes.forEach { (cellClass) in
            let cellId = String(describing: cellClass)
            let nib    = UINib(nibName: cellId, bundle: Bundle.main)
            self.register(nib, forCellReuseIdentifier: cellId)
        }
    }
    
    func scrollToBot() {
        let bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.size.height)
        scrollView.setContentOffset(bottomOffset, animated: true)
    }
}

