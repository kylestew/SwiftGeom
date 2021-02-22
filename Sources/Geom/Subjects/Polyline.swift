import Foundation
import GeomAPI

public struct Polyline: PCLike {
    public let points: [Vec]

    public init(pts: [Vec]) {
        self.points = pts
    }
}

extension Polyline: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
    public var debugDescription: String {
        return "Polyline[\(points.count) points]"
    }
    public var playgroundDescription: Any {
        return debugDescription
    }
}
