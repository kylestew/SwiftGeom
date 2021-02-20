import Foundation
import GeomAPI

public struct Ellipse {
    public let pos: Vec
    public let r: Vec

    public init(pos: Vec, r: Vec) {
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
