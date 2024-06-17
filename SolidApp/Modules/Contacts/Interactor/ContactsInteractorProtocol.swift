//
//  ContactsInteractorProtocol.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation

// ContactsInteractorInputProtocol.swift
protocol ContactsInteractorInputProtocol: AnyObject {
    var presenter: ContactsInteractorOutputProtocol? { get set }
    
    // Aqui você pode definir métodos para manipular lógica de negócios relacionada a contatos
}

// ContactsInteractorOutputProtocol.swift
protocol ContactsInteractorOutputProtocol: AnyObject {
    // Aqui você pode definir métodos para passar dados da lógica de negócios para o Presenter
}
