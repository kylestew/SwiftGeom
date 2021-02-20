import Foundation

public struct Vec2 : Vec {
    public let x: Double
    public let y: Double

    public init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }

    public init() {
        self.init(0, 0)
    }

    public static var zero: Vec {
        Vec2()
    }

    public var length: Double {
        (x * x + y * y).squareRoot()
    }
}

extension Vec2: Equatable {}
