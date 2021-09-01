//
//  ContactsRouter.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class ContactsRouter {
    weak var controller: UIViewController?
    
    init(controller: UIViewController) {
        self.controller = controller
    }
}

extension ContactsRouter: ContactsRouterProtocol {
    
}
