//
//  BondViewModel.swift
//
//
//  Created by Alexander Zaporozhchenko on 1/1/19.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import ReactiveKit
import Bond
import ServerAPI


public protocol BondVMProtocol : class { }

public class BondViewModel: NSObject, BondVMProtocol {
    
    let errors = SafePublishSubject<BaseServiceError>()
    
    public override init(){
        super.init()
        errors
            .observeNext { error in
                print("error" )
                //TODO: Switch between error types and do global or custom alerts/routes
//                switch error {
//                case .someTypeError(let message):
//                    Router.shared.showAlert(message: message)
//                default:
//                    Router.shared.showAlert()
//                }
            }
            .dispose(in: bag)
    }
}

