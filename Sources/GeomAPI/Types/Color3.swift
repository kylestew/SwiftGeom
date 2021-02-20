import Foundation

typealias Color3 = Vec3

extension Color3 {
    init(r: Double, g: Double, b: Double) {
        self.init(r, g, b)
    }
    var r: Double {
        x
    }
    var g: Double {
        y
    }
    var b: Double {
        z
    }
}

