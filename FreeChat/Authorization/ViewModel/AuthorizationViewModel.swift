//
//  AuthorizationViewModel.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import Foundation

class AuthorizationViewModel {
    private var router: AuthorizationRouterProtocol
    
    init(router: AuthorizationRouterProtocol) {
        self.router = router
    }
}

extension AuthorizationViewModel: AuthorizationViewModelProtocol {
    
}
