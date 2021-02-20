import Foundation

public protocol Vec {
    var x: Double { get }
    var y: Double { get }

    static var zero: Vec { get }

    var length: Double { get }
}

public extension Vec {
    var h: Double { x }
    var w: Double { y }
}

public protocol VectorFunctions {
    static func unit(u: Self) -> Self
    static func dot(u: Self, v: Self) -> Double
}

public protocol Vector: Vec, VectorFunctions {}

struct Vec4 : Vector {
    var x: Double

    var y: Double

    static var zero: Vec

    var length: Double

    static func unit(u: Vec4) -> Vec4 {
        <#code#>
    }

    static func dot(u: Vec4, v: Vec4) -> Double {
        <#code#>
    }

    
}


// MARK: - Basic Operators

public extension Vec2 {

    static func +(u: Vec2, v: Vec2) -> Vec2 {
        Vec2(u.x + v.x, u.y + v.y)
    }

    //    static func -(u: Vec3, v: Vec3) -> Vec3 {
    //        Vec3(x: u.x - v.x, y: u.y - v.y, z: u.z - v.z)
    //    }
    //
    //    static func *(u: Vec3, v: Vec3) -> Vec3 {
    //        Vec3(x: u.x * v.x, y: u.y * v.y, z: u.z * v.z)
    //    }
    //
    //    static func *(t: Double, v: Vec3) -> Vec3 {
    //        Vec3(x: t * v.x, y: t * v.y, z: t * v.z)
    //    }
    //
    //    static func *(v: Vec3, t: Double) -> Vec3 {
    //        t * v
    //    }
    //
    //    static func /(v: Vec3, t: Double) -> Vec3 {
    //        (1 / t) * v;
    //    }
    //

//    static func +=(u: Vec3, v: Vec3) -> Vec3 {
//        u + v
//    }
//
//    static func *=(u: Vec3, v: Vec3) -> Vec3 {
//        u * v
//    }
//
//    static func dot(u: Vec3, v: Vec3) -> Double {
//        u.x * v.x
//            + u.y * v.y
//            + u.z * v.z
//    }

    static func cross(u: Vec, v: Vec) -> Double {
        v.x * u.y - v.y * u.x
    }

//    static func unit(v: Vec3) -> Vec3 {
//        return v / v.length
//    }
//
//    func lerp(to: Vec3, t: Double) -> Vec3 {
//        self + (t * (to - self))
//    }

}

public extension Vec3 {

    static func +(u: Vec3, v: Vec3) -> Vec3 {
        Vec3(u.x + v.x, u.y + v.y, u.z + v.z)
    }

    //    static func -(u: Vec3, v: Vec3) -> Vec3 {
    //        Vec3(x: u.x - v.x, y: u.y - v.y, z: u.z - v.z)
    //    }
    //
    //    static func *(u: Vec3, v: Vec3) -> Vec3 {
    //        Vec3(x: u.x * v.x, y: u.y * v.y, z: u.z * v.z)
    //    }
    //
    //    static func *(t: Double, v: Vec3) -> Vec3 {
    //        Vec3(x: t * v.x, y: t * v.y, z: t * v.z)
    //    }
    //
    //    static func *(v: Vec3, t: Double) -> Vec3 {
    //        t * v
    //    }
    //
    //    static func /(v: Vec3, t: Double) -> Vec3 {
    //        (1 / t) * v;
    //    }
    //

//    static func +=(u: Vec3, v: Vec3) -> Vec3 {
//        u + v
//    }
//
//    static func *=(u: Vec3, v: Vec3) -> Vec3 {
//        u * v
//    }
//
//    static func dot(u: Vec3, v: Vec3) -> Double {
//        u.x * v.x
//            + u.y * v.y
//            + u.z * v.z
//    }
//
//    static func cross(u: Vec3, v: Vec3) -> Vec3 {
//        Vec3(x: u.y * v.z - u.z * v.y,
//             y: u.z * v.x - u.x * v.z,
//             z: u.x * v.y - u.y * v.x)
//    }
//
//    static func unit(v: Vec3) -> Vec3 {
//        return v / v.length
//    }
//
//    func lerp(to: Vec3, t: Double) -> Vec3 {
//        self + (t * (to - self))
//    }

}


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
