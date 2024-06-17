//
//  CalculationPresenter.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation

protocol CalculationPresenterProtocol: AnyObject {
    func calculate(value: Double, using type: TaxCalculatorType)
}

protocol CalculationViewProtocol: AnyObject {
    func show(result: CalculationResult)
}

class CalculationPresenter: CalculationPresenterProtocol {
    weak var view: CalculationViewProtocol?
    var interactor: CalculationInteractorInputProtocol?
    var router: CalculationRouterProtocol?

    func calculate(value: Double, using type: TaxCalculatorType) {
        interactor?.calculate(value: value, using: type)
    }
}

extension CalculationPresenter: CalculationInteractorOutputProtocol {
    func didCalculate(result: CalculationResult) {
        view?.show(result: result)
    }
}
