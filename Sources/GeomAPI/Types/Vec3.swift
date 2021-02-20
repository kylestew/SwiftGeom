import Foundation

public struct Vec3 : Vec {
    public let x: Double
    public let y: Double
    public let z: Double

    public init(_ x: Double, _ y: Double, _ z: Double = 0.0) {
        self.x = x
        self.y = y
        self.z = z
    }

    public init(_ u: Double) {
        self.init(u, u, u)
    }

    public init() {
        self.init(0, 0, 0)
    }

    public static var zero: Vec {
        Vec3()
    }

    public var d: Double { z }

    public var length: Double {
        (x * x + y * y + z * z).squareRoot()
    }

//    var unit: Vec3 {
//        Vec3.unit(v: self)
//    }
}

extension Vec3: Equatable {}
