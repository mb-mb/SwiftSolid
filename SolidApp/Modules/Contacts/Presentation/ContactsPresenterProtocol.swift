//
//  ContactsPresenterProtocol.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation

// ContactsPresenterProtocol.swift
protocol ContactsPresenterProtocol: AnyObject {
    var view: ContactsViewProtocol? { get set }
    var interactor: ContactsInteractorInputProtocol? { get set }
    var router: ContactsRouterProtocol? { get set }
    
    func viewDidLoad()
    // Aqui você pode definir métodos para receber eventos da View e do Interactor
}
