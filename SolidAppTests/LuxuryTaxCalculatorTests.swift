//
//  LtcTests.swift
//  SolidAppTests
//
//  Created by Suporte2 on 16/06/24.
//

// LuxuryTaxCalculatorTests.swift
import XCTest
@testable import SolidApp

class LuxuryTaxCalculatorTests: XCTestCase {
    func testLuxuryTaxBelowThreshold() {
        let product = Product(name: "Normal Watch", price: 200.0)
        let taxCalculator = LuxuryTaxCalculator(threshold: 500.0, basicTaxRate: 0.1, luxuryTaxRate: 0.3)
        let priceCalculator = PriceCalculator(taxCalculator: taxCalculator)
        
        XCTAssertEqual(priceCalculator.calculateTotalPrice(for: product), 220.0)
    }
    
    func testLuxuryTaxAboveThreshold() {
        let product = Product(name: "Luxury Watch", price: 1000.0)
        let taxCalculator = LuxuryTaxCalculator(threshold: 500.0, basicTaxRate: 0.1, luxuryTaxRate: 0.3)
        let priceCalculator = PriceCalculator(taxCalculator: taxCalculator)
        
        XCTAssertEqual(priceCalculator.calculateTotalPrice(for: product), 1300.0)
    }
}

