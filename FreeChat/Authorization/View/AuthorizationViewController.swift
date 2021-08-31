//
//  AuthorizationViewController.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    var viewModel: AuthorizationViewModelProtocol!
   
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwardTextField: UITextField!
    @IBOutlet private weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
    }

    @IBAction private func actionButton(_ sender: UIButton) {
    }
    
}
