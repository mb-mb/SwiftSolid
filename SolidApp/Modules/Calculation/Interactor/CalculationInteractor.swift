//
//  CalculationInteractor.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation


protocol CalculationInteractorInputProtocol: AnyObject {
    var presenter: CalculationInteractorOutputProtocol? { get set }
    func calculate(value: Double, using type: TaxCalculatorType)
}

protocol CalculationInteractorOutputProtocol: AnyObject {
    func didCalculate(result: CalculationResult)
}

class CalculationInteractor: CalculationInteractorInputProtocol {
    weak var presenter: CalculationInteractorOutputProtocol?

    func calculate(value: Double, using type: TaxCalculatorType) {
        let calculator: TaxCalculator

        switch type {
        case .basic:
            calculator = BasicTaxCalculator()
        case .imported:
            calculator = ImportedTaxCalculator()
        case .complex:
            calculator = ComplexTaxCalculator()
        case .luxury(let threshold, let basicTaxRate, let luxuryTaxRate):
            calculator = LuxuryTaxCalculator(threshold: threshold, basicTaxRate: basicTaxRate, luxuryTaxRate: luxuryTaxRate)
        }

        let product = Product(name: "Sample", price: value)
        let tax = calculator.calculateTax(for: product)
        let result = CalculationResult(value: value + tax)
        presenter?.didCalculate(result: result)
    }
}
