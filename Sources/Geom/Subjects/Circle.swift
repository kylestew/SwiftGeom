import Foundation
import GeomAPI

public struct Circle {
    public let pos: Vec
    public let r: Double

    public init(pos: Vec = Vec.zero, r: Double = 1) {
        self.pos = pos
        self.r = r
    }
}

extension Circle: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
    public var debugDescription: String {
        return "Circle(pos:\(pos), r: \(r))"
    }
    public var playgroundDescription: Any {
        return debugDescription
    }
}
