import Foundation

public struct Vec {
    public let x: Double
    public let y: Double
    public let z: Double
    public let w: Double

    public init(_ x: Double, _ y: Double, _ z: Double = 0, _ w: Double = 0) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }

    public static var zero: Vec {
        Vec(0, 0, 0, 0)
    }
}

public extension Vec {
    var height: Double { x }
    var width: Double { y }
    var depth: Double { z }
}

extension Vec: Equatable {}
