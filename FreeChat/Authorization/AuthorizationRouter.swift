//
//  AuthorizationRouter.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class AuthorizationRouter {
    weak var controller: UIViewController?
    
    init(controller: UIViewController) {
        self.controller = controller
    }
}

extension AuthorizationRouter: AuthorizationRouterProtocol {
    
}
