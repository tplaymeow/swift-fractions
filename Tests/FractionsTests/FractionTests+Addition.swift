import XCTest
@testable import Fractions

extension FractionTests {
  func testAdditionEqualDenominator() {
    let a = Fraction(numerator: 5, denominator: 9)
    let b = Fraction(numerator: 2, denominator: 9)
    let result = a + b
    
    let expected = Fraction(numerator: 7, denominator: 9)
    
    XCTAssertEqual(result, expected)
  }
  
  func testAdditionMultipleDenominator() {
    let a = Fraction(numerator: 1, denominator: 2)
    let b = Fraction(numerator: 1, denominator: 8)
    let result = a + b
    
    let expected = Fraction(numerator: 5, denominator: 8)
    
    XCTAssertEqual(result, expected)
  }
  
  func testAdditionNotEqualDenominatorOneLCM() {
    let a = Fraction(numerator: 1, denominator: 7)
    let b = Fraction(numerator: 1, denominator: 8)
    let result = a + b
    
    let expected = Fraction(numerator: 15, denominator: 56)
    
    XCTAssertEqual(result, expected)
  }
  
  func testAdditionNotEqualDenominator() {
    let a = Fraction(numerator: 2, denominator: 15)
    let b = Fraction(numerator: 1, denominator: 12)
    let result = a + b
    
    let expected = Fraction(numerator: 13, denominator: 60)
    
    XCTAssertEqual(result, expected)
  }
}
