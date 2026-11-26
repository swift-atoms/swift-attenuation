# swift-attenuation

Use this package when a value is attenuation: how fast an amplitude falls along a distance. Start from `Attenuation`, a kind of quantity of swift-quantity, and make an amount with `Attenuation.amount(_:)`; it is a `Attenuation.Value<Scalar>`, a `Tagged<Attenuation, Scalar>`. It is a kind of its own, not a wavenumber, though it has the same dimension. Its one equation is the share a medium takes over a distance, `Attenuation.absorbed(density:over:)`.

## Laws

- An amount of attenuation is stored in nepers per metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: -1 (exponents of the base dimensions).
- `absorbed(density:over:)` is `1 − exp(−density × distance)`, worked as `−expm1` so that it keeps its precision near 0; it is 0 for a density or distance that is not positive and for a result that is not a number, and 1 for an infinite distance.
- Amounts of attenuation add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
