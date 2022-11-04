import XCTest
@testable import Fractions

final class MathTests: XCTestCase { }

// MARK: - GCD

extension MathTests {
  func testGCDSignedPositive() {
    let a: Int = 4
    let b: Int = 1

    let result = Math.gcd(a, b)
    let expectedResult: Int = 1

    XCTAssertEqual(result, expectedResult)
  }

  func testGCDSignedNegative() {
    let a: Int = -98
    let b: Int = 56

    let result = Math.gcd(a, b)
    let expectedResult: Int = 14

    XCTAssertEqual(result, expectedResult)
  }

  func testGCDUnsigned() {
    let a: UInt = 98
    let b: UInt = 56

    let result = Math.gcd(a, b)
    let expectedResult: UInt = 14

    XCTAssertEqual(result, expectedResult)
  }
}

// MARK: - LCM

extension MathTests {
  func testLCMSignedPositive() {
    let a: Int = 10
    let b: Int = 12

    let result = Math.lcm(a, b)
    let expectedResult: Int = 60

    XCTAssertEqual(result, expectedResult)
  }

  func testLCMSignedNegative() {
    let a: Int = -10
    let b: Int = 12

    let result = Math.lcm(a, b)
    let expectedResult: Int = 60

    XCTAssertEqual(result, expectedResult)
  }

  func testLCMUnsigned() {
    let a: UInt = 10
    let b: UInt = 12

    let result = Math.lcm(a, b)
    let expectedResult: UInt = 60

    XCTAssertEqual(result, expectedResult)
  }
}
