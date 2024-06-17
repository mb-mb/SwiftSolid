//
//  TaxCalculatorType.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//

import Foundation
// TaxCalculatorType.swift

enum TaxCalculatorType {
    case basic
    case imported
    case complex
    case luxury(threshold: Double, basicTaxRate: Double, luxuryTaxRate: Double)

    static func type(for index: Int, threshold: Double? = nil, basicTaxRate: Double? = nil, luxuryTaxRate: Double? = nil) -> TaxCalculatorType {
        switch index {
        case 0:
            return .basic
        case 1:
            return .imported
        case 2:
            return .complex
        case 3:
            guard let threshold = threshold, let basicTaxRate = basicTaxRate, let luxuryTaxRate = luxuryTaxRate else {
                return .basic // Default fallback if parameters are missing
            }
            return .luxury(threshold: threshold, basicTaxRate: basicTaxRate, luxuryTaxRate: luxuryTaxRate)
        default:
            return .basic
        }
    }
}
