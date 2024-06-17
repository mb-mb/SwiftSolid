//
//  ocp.swift
//  SolidApp
//
//  Created by Suporte2 on 15/06/24.
// - Open/Closed Principle (OCP)
//   As classes devem ser abertas para extensão, mas fechadas para modificação.

import Foundation

final class ImportedTaxCalculator: TaxCalculator {
    func calculateTax(for product: Product) -> Double {
        return product.price * 0.3
    }
}

