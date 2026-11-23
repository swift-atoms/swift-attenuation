import Attenuation
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
