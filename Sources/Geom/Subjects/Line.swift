import Foundation
import GeomAPI

public struct Line: PCLike {
    public let points: [Vec3]

    public init(a: Vec3, b: Vec3) {
        self.points = [a, b]
    }
}

//extension Polygon: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
//    public var debugDescription: String {
//        return "Polygon[\(points.count) points]"
//    }
//    public var playgroundDescription: Any {
//        return debugDescription
//    }
//}
