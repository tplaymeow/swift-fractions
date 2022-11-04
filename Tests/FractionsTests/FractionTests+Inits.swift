import XCTest
@testable import Fractions

// MARK: - Standard

extension FractionTests {
  func testInitNormalized() {
    let result = Fraction(numerator: 5, denominator: 2)
    let expected = Fraction(numerator: 5, denominator: 2)
    XCTAssertEqual(result, expected)
  }

  func testInitUnnormalized() {
    let result = Fraction(numerator: 10, denominator: 4)
    let expected = Fraction(numerator: 5, denominator: 2)
    XCTAssertEqual(result, expected)
  }
}

// MARK: - Int literal

extension FractionTests {
  func testInitIntLiteral() {
    let result: Fraction<Int> = 4
    let expected = Fraction(numerator: 4, denominator: 1)
    XCTAssertEqual(result, expected)
  }
}
