import Foundation

public extension Vec {
    static func +(u: Vec, v: Vec) -> Vec {
        Vec(u.x + v.x, u.y + v.y, u.z + v.z, u.w + v.w)
    }

    static func -(u: Vec, v: Vec) -> Vec {
        Vec(u.x - v.x, u.y - v.y, u.z - v.z, u.w - v.w)
    }

    static func *(u: Vec, v: Vec) -> Vec {
        Vec(u.x * v.x, u.y * v.y, u.z * v.z, u.w * v.w)
    }

    static func *(t: Double, v: Vec) -> Vec {
        Vec(t * v.x, t * v.y, t * v.z, t * v.w)
    }

    static func *(v: Vec, t: Double) -> Vec {
        t * v
    }

    static func /(v: Vec, t: Double) -> Vec {
        (1 / t) * v
    }

    static func /(t: Double, v: Vec) -> Vec {
        (1 / t) * v
    }

    static func +=(u: Vec, v: Vec) -> Vec {
        u + v
    }

    static func *=(u: Vec, v: Vec) -> Vec {
        u * v
    }

    static prefix func -(u: Vec) -> Vec {
        Vec(-u.x, -u.y, -u.z, -u.w)
    }
}
