//
//  UIScrollView+Bond.swift
//  
//
//  Created by Alexandr on 1/1/19.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import ReactiveKit
import Bond


extension ReactiveExtensions where Base: UIScrollView {
    public var delegate: ProtocolProxy {
        return base.reactive.protocolProxy(for: UIScrollViewDelegate.self, selector: NSSelectorFromString("setDelegate:"))
    }
}

extension UIScrollView {
    var scrolledY: SafeSignal<Float> {
        return reactive.delegate.signal(for: #selector(UIScrollViewDelegate.scrollViewDidScroll(_:))) { (subject: SafePublishSubject<Float>, scrollview: UIScrollView) in
            subject.next(Float(scrollview.contentOffset.y))
        }
    }
}


