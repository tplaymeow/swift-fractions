extension Fraction: AdditiveArithmetic {
  @inlinable
  public static func - (lhs: Fraction, rhs: Fraction) -> Fraction {
    let denominatorsLCD = Math.lcm(lhs.denominator, rhs.denominator)

    let leftMultiplier = denominatorsLCD / lhs.denominator
    let rightMultiplier = denominatorsLCD / rhs.denominator

    return Fraction(
      numerator: lhs.numerator * leftMultiplier - rhs.numerator * rightMultiplier,
      denominator: denominatorsLCD,
      normilized: false
    )
  }

  @inlinable
  public static func + (lhs: Fraction, rhs: Fraction) -> Fraction {
    let denominatorsLCD = Math.lcm(lhs.denominator, rhs.denominator)

    let leftMultiplier = denominatorsLCD / lhs.denominator
    let rightMultiplier = denominatorsLCD / rhs.denominator

    return Fraction(
      numerator: lhs.numerator * leftMultiplier + rhs.numerator * rightMultiplier,
      denominator: denominatorsLCD,
      normilized: false
    )
  }
}
