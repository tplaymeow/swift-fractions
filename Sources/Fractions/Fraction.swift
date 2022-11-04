public struct Fraction<Number> where Number: BinaryInteger {
  public let numerator: Number
  public let denominator: Number

  @inlinable
  public init(numerator: Number, denominator: Number) {
    self.init(
      numerator: numerator,
      denominator: denominator,
      normilized: false
    )
  }

  @inlinable
  init(numerator: Number, denominator: Number, normilized: Bool) {
    if normilized {
      self.numerator = numerator
      self.denominator = denominator
    } else {
      let gcd = Math.gcd(numerator, denominator)
      self.numerator = numerator / gcd
      self.denominator = denominator / gcd
    }
  }
}
