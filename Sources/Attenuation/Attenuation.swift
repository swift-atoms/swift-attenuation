/// Attenuation: how fast an amplitude falls along a distance, stored in nepers per metre.
public enum Attenuation {}

extension Attenuation: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1) }
}

extension Attenuation {
    /// An amount of attenuation, its scalar in nepers per metre.
    public typealias Value<Scalar> = Tagged<Attenuation, Scalar>
}
