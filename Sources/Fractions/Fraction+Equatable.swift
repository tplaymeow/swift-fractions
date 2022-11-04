extension Fraction: Equatable {
  @inlinable
  public static func == (lhs: Fraction, rhs: Fraction) -> Bool {
    lhs.numerator == rhs.numerator &&
    rhs.denominator == rhs.denominator
  }
}
