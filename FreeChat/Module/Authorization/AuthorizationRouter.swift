//
//  AuthorizationRouter.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class AuthorizationRouter {
    weak var controller: UIViewController?
   
}

extension AuthorizationRouter: AuthorizationRouterProtocol {
    func routToContacts() {
        let view = ContactsWireFrame.create()
        self.controller?.navigationController?.pushViewController(view, animated: true)
    }
}
