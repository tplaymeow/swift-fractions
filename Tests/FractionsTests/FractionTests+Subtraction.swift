import XCTest
@testable import Fractions

extension FractionTests {
  func testSubtractionEqualDenominator() {
    let a = Fraction(numerator: 5, denominator: 9)
    let b = Fraction(numerator: 2, denominator: 9)
    let result = a - b

    let expected = Fraction(numerator: 1, denominator: 3)

    XCTAssertEqual(result, expected)
  }

  func testSubtractionMultipleDenominator() {
    let a = Fraction(numerator: 1, denominator: 2)
    let b = Fraction(numerator: 1, denominator: 8)
    let result = a - b

    let expected = Fraction(numerator: 3, denominator: 8)

    XCTAssertEqual(result, expected)
  }

  func testSubtractionNotEqualDenominatorOneLCM() {
    let a = Fraction(numerator: 1, denominator: 7)
    let b = Fraction(numerator: 1, denominator: 8)
    let result = a - b

    let expected = Fraction(numerator: 1, denominator: 56)

    XCTAssertEqual(result, expected)
  }

  func testSubtractionNotEqualDenominator() {
    let a = Fraction(numerator: 2, denominator: 15)
    let b = Fraction(numerator: 1, denominator: 12)
    let result = a - b

    let expected = Fraction(numerator: 1, denominator: 20)

    XCTAssertEqual(result, expected)
  }
}
