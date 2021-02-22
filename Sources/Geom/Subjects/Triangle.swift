import Foundation
import GeomAPI

public struct Triangle: PCLike {
    public let points: [Vec]

    public init(pts: [Vec]) {
        self.points = pts
    }

    public init(a: Vec, b: Vec, c: Vec) {
        self.init(pts: [a, b, c])
    }
}

extension Triangle: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
    public var debugDescription: String {
        return "Triangle[\(points.count) points]"
    }
    public var playgroundDescription: Any {
        return debugDescription
    }
}
