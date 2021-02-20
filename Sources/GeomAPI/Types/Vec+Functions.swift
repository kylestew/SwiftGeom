import Foundation

public protocol VectorFunctions {

    var length: Double { get }
    var unit: Self { get }

    func dot(_ v: Self) -> Double
    func cross(_ v: Self) -> Self
    func cross2(_ v: Self) -> Double

    func lerp(to: Self, t: Double) -> Self

}

extension Vec: VectorFunctions {
    public var length: Double {
        (x * x + y * y + z * z + w * w).squareRoot()
    }

    public var unit: Vec {
        self / self.length
    }

    public func dot(_ v: Vec) -> Double {
        self.x * v.x
            + self.y * v.y
            + self.z * v.z
            + self.w * v.w
    }

    public func cross(_ v: Vec) -> Vec {
        Vec(self.y * v.z - self.z * v.y,
            self.z * v.x - self.x * v.z,
            self.x * v.y - self.y * v.x)
    }

    public func cross2(_ v: Vec) -> Double {
        self.x * v.y - self.y * v.x
    }

    public func lerp(to: Vec, t: Double) -> Vec {
        self + (t * (to - self))
    }
}
