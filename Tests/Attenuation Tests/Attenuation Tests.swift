import Attenuation
import Numeric
import Testing

enum `Attenuation Tests` {}

extension `Attenuation Tests` {
    @Suite struct `Attenuation is a kind of quantity in nepers per metre` {
        @Test func `Its dimension is length: -1`() {
            #expect(Attenuation.dimension == Quantity.Dimension(length: -1))
        }

        @Test func `An amount given in nepers per metre keeps its scalar`() {
            #expect(Attenuation.amount(2.5).underlying == 2.5)
        }
    }
}

extension `Attenuation Tests` {
    @Suite struct `A medium takes a share of light over a distance` {
        @Test func `The share is one less the light left, none at no distance and all at an infinite one`() {
            #expect(Attenuation.absorbed(density: 0.5, over: 2.0) == -Double.expm1(-1))
            #expect(Attenuation.absorbed(density: 0.5, over: 0.0) == 0)
            #expect(Attenuation.absorbed(density: 0.5, over: Double.infinity) == 1)
            #expect(Attenuation.absorbed(density: -1, over: 2.0) == 0)
            #expect(Attenuation.absorbed(density: Double.nan, over: 2.0) == 0)
        }
    }
}
