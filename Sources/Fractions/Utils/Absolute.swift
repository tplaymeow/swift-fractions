@propertyWrapper
@usableFromInline
struct Absolute<Number> where Number: BinaryInteger {
  @usableFromInline
  let wrappedValue: Number

  @inlinable
  init(wrappedValue: Number) {
    self.wrappedValue = Number(wrappedValue.magnitude)
  }
}
