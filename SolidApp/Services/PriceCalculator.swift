//
//  singleResponsability.swift
//  SolidApp
//
//  Created by Suporte2 on 15/06/24.
// - Single Responsibility Principle (SRP)
//   Cada classe deve ter uma única responsabilidade ou motivo para mudar.


import Foundation

// PriceCalculator.swift
class PriceCalculator {
    private let taxCalculator: TaxCalculator
    
    init(taxCalculator: TaxCalculator) {
        self.taxCalculator = taxCalculator
    }
    
    func calculateTotalPrice(for product: Product) -> Double {
        let tax = taxCalculator.calculateTax(for: product)
        return product.price + tax
    }
}
