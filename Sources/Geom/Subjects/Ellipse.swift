import Foundation
import GeomAPI

public struct Ellipse {
    public let pos: Vec3
    public let r: Vec3

    public init(pos: Vec3, r: Vec3) {
        self.pos = pos
        self.r = r
    }
}

extension Ellipse: CustomDebugStringConvertible, CustomPlaygroundDisplayConvertible {
    public var debugDescription: String {
        return "Ellipse(pos:\(pos), r: \(r))"
    }
    public var playgroundDescription: Any {
        return debugDescription
    }
}
