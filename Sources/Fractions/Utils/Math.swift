@usableFromInline
enum Math {
  @inlinable
  static func gcd<Number>(
    @Absolute _ a: Number,
    @Absolute _ b: Number
  ) -> Number where Number: BinaryInteger {
    guard a != b else { return a }
    guard a != .zero else { return b }
    guard b != .zero else { return a }
    return Self.gcd(b, a % b)
  }

  @inlinable
  static func lcm<Number>(
    @Absolute _ a: Number,
    @Absolute _ b: Number
  ) -> Number where Number: BinaryInteger {
    a * b / Self.gcd(a, b)
  }
}
