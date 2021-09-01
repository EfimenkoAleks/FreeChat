//
//  ContactsViewController.swift
//  FreeChat
//
//  Created by user on 31.08.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    var viewModel: ContactsViewModelProtocol!

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension ContactsViewController: UITableViewDelegate {}

extension ContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicStyle", for: indexPath)

        cell.textLabel?.text = "Title text"
        return cell
    }
    
    
}
