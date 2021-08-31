//
//  AuthorizationViewController.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    var viewModel: AuthorizationViewModelProtocol!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func actionButton(_ sender: UIButton) {
    }
    
}
