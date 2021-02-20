import Foundation
import GeomAPI

public struct Polygon: PCLike {
    public let points: [Vec]

    public init(points: [Vec]) {
        self.points = points
    }
}

extension Polygon: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
    public var debugDescription: String {
        return "Polygon[\(points.count) points]"
    }
    public var playgroundDescription: Any {
        return debugDescription
    }
}
