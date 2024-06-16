//
//  SolidAppTests.swift
//  SolidAppTests
//
//  Created by Suporte2 on 14/06/24.
//

import XCTest
@testable import SolidApp

// PriceCalculatorTests.swift
import XCTest

// - Liskov Substitution Principle (LSP):
// Os objetos de uma classe derivada devem poder substituir objetos da classe base sem alterar o funcionamento.
// No exemplo: BasicTaxCalculator e ImportedTaxCalculator podem ser usados no lugar um do outro.

// - Dependency Inversion Principle (DIP):
//   Dependa de abstrações, não de classes concretas.
//   No exemplo: PriceCalculator depende da abstração TaxCalculator, não de uma implementação específica.

class PriceCalculatorTests: XCTestCase {
    func testBasicTaxCalculation() {
        let product = Product(name: "Book", price: 50.0)
        let taxCalculator = BasicTaxCalculator()
        let priceCalculator = PriceCalculator(taxCalculator: taxCalculator)
        
        XCTAssertEqual(priceCalculator.calculateTotalPrice(for: product), 60.0)
    }
    
    func testImportedTaxCalculation() {
        let product = Product(name: "Book", price: 50.0)
        let taxCalculator = ImportedTaxCalculator()
        let priceCalculator = PriceCalculator(taxCalculator: taxCalculator)
        
        XCTAssertEqual(priceCalculator.calculateTotalPrice(for: product), 65.0)
    }
    
    func testComplexTaxCalculation() {
        let product = Product(name: "Book", price: 50.0)
        let taxCalculator = ComplexTaxCalculator()
        let priceCalculator = PriceCalculator(taxCalculator: taxCalculator)
        
        XCTAssertEqual(priceCalculator.calculateTotalPrice(for: product), 62.5)
    }
}

