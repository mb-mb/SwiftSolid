//
//  CalculationRouter.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation
import UIKit
// CalculationRouter.swift

protocol CalculationRouterProtocol: AnyObject {
//    var view: CalculationViewProtocol? { get set }
//    var interactor: CalculationInteractorInputProtocol? { get set }
    var view: CalculationViewProtocol? { get set }
    static func createModule() -> UIViewController
}

class CalculationRouter: CalculationRouterProtocol {
    weak var view: CalculationViewProtocol?
    
    static func createModule() -> UIViewController {
        let view = CalculationViewController()
        let presenter = CalculationPresenter()
        let interactor: CalculationInteractorInputProtocol = CalculationInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        
        let router = CalculationRouter()
        router.view = view
//        router.interactor = interactor
        
        presenter.router = router
        interactor.presenter = presenter
        
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem = UITabBarItem(title: "Calculation", image: UIImage(systemName: "calendar"), selectedImage: UIImage(systemName: "calendar"))
        return navigationController

    }
}

