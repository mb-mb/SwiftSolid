//
//  BasicTaxCalculator.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation


class BasicTaxCalculator: TaxCalculator {
    func calculateTax(for product: Product) -> Double {
        return product.price * 0.2
    }
}
