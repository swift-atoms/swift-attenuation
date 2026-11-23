# swift-attenuation

Use this package when a value is attenuation: how fast an amplitude falls along a distance. Start from `Attenuation`, a kind of quantity of swift-quantity, and make an amount with `Attenuation.amount(_:)`; it is a `Attenuation.Value<Scalar>`, a `Tagged<Attenuation, Scalar>`. It is a kind of its own, not a wavenumber, though it has the same dimension; it owns no equation.

## Laws

- An amount of attenuation is stored in nepers per metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: -1 (exponents of the base dimensions).
- Amounts of attenuation add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
