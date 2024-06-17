//
//  ContactsPresenter.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation
// ContactsPresenter.swift
class ContactsPresenter: ContactsPresenterProtocol, ContactsInteractorOutputProtocol {
    weak var view: ContactsViewProtocol?
    var interactor: ContactsInteractorInputProtocol?
    var router: ContactsRouterProtocol?

    func viewDidLoad() {
        // Perform any initial setup
    }

    // Implement other methods from ContactsPresenterProtocol as needed
}
