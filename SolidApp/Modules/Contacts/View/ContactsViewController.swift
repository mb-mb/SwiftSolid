//
//  ContactsViewController.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import UIKit

class ContactsViewController: UIViewController, ContactsViewProtocol {
    var presenter: ContactsPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        // Configure view components and setup
    }
    // Implement UI and event handling methods as needed
}
