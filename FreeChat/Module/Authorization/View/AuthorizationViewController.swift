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
        self.viewModel.delegate = self

        self.view.backgroundColor = .white
    }

    @IBAction private func actionButton(_ sender: UIButton) {
        
    }
}

extension AuthorizationViewController: AuthorizationDelegate {
    func startButton(isCorrect: Bool) {
        self.enterButton.alpha = isCorrect ? 1.0 : 0.5
    }
}

extension AuthorizationViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField === self.emailTextField {
            self.viewModel.didEnterEmail(textField.text)
        }
        
        if textField === self.passwardTextField {
            self.viewModel.didEnterPassword(textField.text)
        }
    }
}
