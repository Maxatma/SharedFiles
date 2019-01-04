//
//  UIDocumentPickerViewController+Bond.swift
//
//
//  Created by Alexander Zaporozhchenko on 1/1/19.
//  Copyright © 2018 Alexander Zaporozhchenko. All rights reserved.
//

import Bond
import ReactiveKit


extension ReactiveExtensions where Base: UIDocumentPickerViewController {
    public var delegate: ProtocolProxy {
        return base.reactive.protocolProxy(for: UIDocumentPickerDelegate.self, selector: NSSelectorFromString("setDelegate:"))
    }
}

extension UIDocumentPickerViewController {
    var pickedAtURL: SafeSignal<URL> {
        return reactive.delegate.signal(for: #selector(UIDocumentPickerDelegate.documentPicker(_:didPickDocumentAt:))) { (subject: SafePublishSubject<URL>, controller: UIDocumentPickerViewController, url:URL) in
            subject.next(url)
        }
    }
}
