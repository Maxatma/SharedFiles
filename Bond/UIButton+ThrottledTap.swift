//
//  Bond+TapExtensions.swift
//
//
//  Created by Alexander Zaporozhchenko on 1/1/19.
//  Copyright © 2018 Alexander Zaporozhchenko. All rights reserved.
//

import UIKit
import ReactiveKit


public extension ReactiveExtensions where Base: UIButton {
    
    public var throttledTap: SafeSignal<Void> {
        return tap.throttle(seconds: 0.5)
    }
}

public extension ReactiveExtensions where Base: UIBarButtonItem {
    
    public var throttledTap: SafeSignal<Void> {
        return tap.throttle(seconds: 0.5)
    }
}


