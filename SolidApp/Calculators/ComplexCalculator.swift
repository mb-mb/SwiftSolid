//
//  icp.swift
//  SolidApp
//
//  Created by Suporte2 on 15/06/24.
// - Interface Segregation Principle (ISP)
//   Muitas interfaces específicas são melhores do que uma interface única geral.
//   No exemplo: ExtendedTaxCalculator adiciona funcionalidade específica sem modificar TaxCalculator.

import Foundation

// ExtendedTaxCalculator.swift
protocol ExtendedTaxCalculator: TaxCalculator {
    func calculateImportDuty(for product: Product) -> Double
}

class ComplexTaxCalculator: ExtendedTaxCalculator {
    func calculateTax(for product: Product) -> Double {
        return product.price * 0.25
    }
    
    func calculateImportDuty(for product: Product) -> Double {
        return product.price * 0.05
    }
}

