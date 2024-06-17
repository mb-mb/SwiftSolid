//
//  Ltc.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation

class LuxuryTaxCalculator: TaxCalculator {
    private let threshold: Double
    private let basicTaxRate: Double
    private let luxuryTaxRate: Double
    
    init(threshold: Double, basicTaxRate: Double, luxuryTaxRate: Double) {
        self.threshold = threshold
        self.basicTaxRate = basicTaxRate
        self.luxuryTaxRate = luxuryTaxRate
    }
    
    func calculateTax(for product: Product) -> Double {
        if product.price > threshold {
            return product.price * luxuryTaxRate
        } else {
            return product.price * basicTaxRate
        }
    }
}
