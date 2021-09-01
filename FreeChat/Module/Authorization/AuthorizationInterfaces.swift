//
//  AuthorizationInterfaces.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import Foundation

protocol AuthorizationViewModelInputProtocol: class {
    func didEnterEmail(_ email: String?)
    func didEnterPassword(_ password: String?)
}

protocol AuthorizationViewModelOutputProtocol: class {
    var delegate: AuthorizationDelegate? { get set }
}

protocol AuthorizationViewModelProtocol: AuthorizationViewModelInputProtocol, AuthorizationViewModelOutputProtocol {}

protocol AuthorizationRouterProtocol {
    func routToContacts()
}

protocol AuthorizationDelegate: class {
    func startButton(isCorrect: Bool)
}
