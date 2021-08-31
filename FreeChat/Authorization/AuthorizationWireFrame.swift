//
//  AuthorizationWireFrame.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class AuthorizationWireFrame {
    
    static func create() -> UIViewController {
        let view = AuthorizationViewController()
        let router = AuthorizationRouter(controller: view)
        let viewModel = AuthorizationViewModel(router: router)
        view.viewModel = viewModel
        
        return view
    }
}
