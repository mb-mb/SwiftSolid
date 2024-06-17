//
//  Texcalculator.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation


protocol TaxCalculator {
    func calculateTax(for product: Product) -> Double
}
