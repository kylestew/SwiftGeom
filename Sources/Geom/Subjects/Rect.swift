import Foundation
import GeomAPI

public struct Rect {
    public let pos: Vec
    public let size: Vec

    public var width: Double {
        size.width
    }
    public var height: Double {
        size.height
    }

    public init(pos: Vec, size: Vec) {
        self.pos = pos
        self.size = size
    }

    public init(centerX: Double, centerY: Double,
                width: Double, height: Double) {
        self.pos = Vec(centerX, centerY)
        self.size = Vec(width, height)
    }

    public init() {
        self.init(pos: Vec.zero, size: Vec.zero)
    }

    public static var zero: Rect {
        Rect()
    }
}

extension Rect: Equatable {
    public static func == (lhs: Rect, rhs: Rect) -> Bool {
        return lhs.pos == rhs.pos
            && lhs.size == rhs.size
    }
}
