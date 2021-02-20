import Foundation

public struct Vec {
    let x: Double
    let y: Double
    let z: Double
    let w: Double

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

// MARK: - Coordinate Systems

//public protocol CoordinateSystemConvertable {
////    var asPolar: Vec { get }
//    var asCartesian: Vec3 { get }
//}
//
//extension Vec3 : CoordinateSystemConvertable {
//    public var asCartesian: Vec3 {
//        // (rad, theta) -> (x, y)
//        Vec3(x: x * cos(y), y: x * sin(y))
//    }
//}
//
//public extension Array where Element: CoordinateSystemConvertable {
//    var asCartesian: [Vec3] {
//        self.map { $0.asCartesian }
//    }
//}
