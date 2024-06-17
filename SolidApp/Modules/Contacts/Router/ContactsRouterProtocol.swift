//
//  ContactsRouterProtocol.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation
import UIKit

// ContactsRouterProtocol.swift
protocol ContactsRouterProtocol: AnyObject {
    var view: ContactsViewProtocol? { get set }
    
    static func createModule() -> UIViewController
}
