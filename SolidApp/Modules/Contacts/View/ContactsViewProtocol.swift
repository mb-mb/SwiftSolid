//
//  ContactViewProtocol.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation

// ContactsViewProtocol.swift
protocol ContactsViewProtocol: AnyObject {
    var presenter: ContactsPresenterProtocol? { get set }
    // Aqui você pode definir métodos para atualizar a interface do usuário
}
