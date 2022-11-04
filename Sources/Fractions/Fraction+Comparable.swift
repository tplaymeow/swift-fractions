extension Fraction: Comparable {
  @inlinable
  public static func < (lhs: Fraction, rhs: Fraction) -> Bool {
    lhs.numerator * rhs.denominator < rhs.numerator * lhs.denominator
  }
}
