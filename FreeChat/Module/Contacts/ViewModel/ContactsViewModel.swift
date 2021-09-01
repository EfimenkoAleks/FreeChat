//
//  ContactsViewModel.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import Foundation

class ContactsViewModel {
    private var router: ContactsRouterProtocol
    
    init(router: ContactsRouterProtocol) {
        self.router = router
    }
}

extension ContactsViewModel: ContactsViewModelProtocol {
    
}
