public import Numeric

/// Attenuation: how fast an amplitude falls along a distance, stored in nepers per metre.
public enum Attenuation {}

extension Attenuation: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1) }
}

extension Attenuation {
    /// An amount of attenuation, its scalar in nepers per metre.
    public typealias Value<Scalar> = Tagged<Attenuation, Scalar>
}

extension Attenuation {
    /// The share of light taken over a distance through a medium of a density, as attenuation over distance:
    /// `1 − exp(−density × distance)`, by Beer and Lambert. It is 0 at no distance, never falls, and is 1 for an
    /// infinite distance; a density or distance that is not positive, or a result that is not a number, gives 0.
    @inlinable
    @inline(__always)
    public static func absorbed<Scalar: BinaryFloatingPoint & Numeric.Transcendental>(density: Scalar, over distance: Scalar) -> Scalar {
        guard density > 0, distance > 0 else { return 0 }
        let share = -Scalar.expm1(-density * distance)
        return share.isNaN ? 0 : share
    }
}
