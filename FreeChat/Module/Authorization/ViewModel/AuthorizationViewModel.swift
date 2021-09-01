//
//  AuthorizationViewModel.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import Foundation
import Firebase

class AuthorizationViewModel {
    private var router: AuthorizationRouterProtocol
    weak var delegate: AuthorizationDelegate?
    private var email: String?
    private var password: String?
    
    init(router: AuthorizationRouterProtocol) {
        self.router = router
    }
    
    private func validate() -> Bool {
        guard
            let email = self.email,
            let password = self.password
        else {
            self.delegate?.startButton(isCorrect: false)
            return false
        }
        let isValid = !email.isEmpty && !password.isEmpty
        self.delegate?.startButton(isCorrect: isValid)
        return isValid
    }
}

extension AuthorizationViewModel: AuthorizationViewModelProtocol {
    func routeToContacts() {
        self.router.routToContacts()
    }
    
    func didEnterEmail(_ email: String?) {
        self.email = email
        self.validate()
    }
    
    func didEnterPassword(_ password: String?) {
        self.password = password
        self.validate()
    }
    
    func didTapStartButton() {
       
        guard self.validate() else { return }
        
        let email = self.email ?? ""
        let password = self.password ?? ""
        
    }

}
