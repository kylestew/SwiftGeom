import Foundation
import GeomAPI

public struct Rect {
    public let pos: Vec
    public let size: Vec

    public init(pos: Vec, size: Vec) {
        self.pos = pos
        self.size = size
    }

    public init(centerX: Double, centerY: Double,
                width: Double, height: Double) {
        self.pos = Vec2(centerX, centerY)
        self.size = Vec2(width, height)
    }

    public init() {
        self.init(pos: Vec2.zero, size: Vec2.zero)
    }

    public static var zero: Rect {
        Rect()
    }
}

extension Rect: Equatable {
    public static func == (lhs: Rect, rhs: Rect) -> Bool {
        return lhs.pos.x == rhs.pos.x &&
            lhs.pos.y == rhs.pos.y &&
            lhs.size.x == rhs.size.x &&
            lhs.size.y == rhs.size.y
    }
}
