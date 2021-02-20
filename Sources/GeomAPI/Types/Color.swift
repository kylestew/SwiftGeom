import Foundation

typealias Color = Vec

extension Color {
    init(r: Double, g: Double, b: Double, a: Double = 1.0) {
        self.init(r, g, b, a)
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
    var a: Double {
        w
    }
}

