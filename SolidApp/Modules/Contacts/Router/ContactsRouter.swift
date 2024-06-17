//
//  ContactsRouter.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation
import UIKit

class ContactsRouter: ContactsRouterProtocol {
    weak var view: ContactsViewProtocol?

    static func createModule() -> UIViewController {
        let view = ContactsViewController()
        let presenter: ContactsPresenterProtocol & ContactsInteractorOutputProtocol = ContactsPresenter()
        let interactor: ContactsInteractorInputProtocol = ContactsInteractor()
        let router: ContactsRouterProtocol = ContactsRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        router.view = view

        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person.3"), selectedImage: UIImage(systemName: "person.3.fill"))
        return navigationController

    }
}
