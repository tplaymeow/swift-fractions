extension Fraction: Numeric {
  @inlinable
  public var magnitude: Fraction<Number.Magnitude> {
    return .init(
      numerator: numerator.magnitude,
      denominator: denominator.magnitude,
      normilized: true
    )
  }

  @inlinable
  public init?<T>(exactly source: T) where T: BinaryInteger {
    guard let numerator = Number(exactly: source) else {
      return nil
    }

    self.numerator = numerator
    self.denominator = 1
  }

  @inlinable
  public static func * (lhs: Fraction, rhs: Fraction) -> Fraction {
    Fraction(
      numerator: lhs.numerator * rhs.numerator,
      denominator: lhs.denominator * rhs.denominator,
      normilized: false
    )
  }

  @inlinable
  public static func *= (lhs: inout Fraction, rhs: Fraction) {
    lhs = lhs * rhs
  }
}
