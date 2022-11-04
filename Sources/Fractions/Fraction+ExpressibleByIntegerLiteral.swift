extension Fraction: ExpressibleByIntegerLiteral {
  @inlinable
  public init(integerLiteral value: Number.IntegerLiteralType) {
    self.numerator = Number(integerLiteral: value)
    self.denominator = 1
  }
}
