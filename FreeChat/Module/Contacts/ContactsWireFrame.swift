//
//  ContactsWireFrame.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class ContactsWireFrame {
    
    static func create() -> UIViewController {
        let view = ContactsViewController()
        let router = ContactsRouter(controller: view)
        let viewModel = ContactsViewModel(router: router)
        view.viewModel = viewModel
        
        return view
    }
}
