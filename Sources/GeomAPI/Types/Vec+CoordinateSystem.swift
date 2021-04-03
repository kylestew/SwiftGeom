import Foundation

public protocol CoordinateSystemConvertable {
//    var asPolar: Vec { get }
    var asCartesian: Vec { get }
}

extension Vec : CoordinateSystemConvertable {
    public var asCartesian: Vec {
        // (rad, theta) -> (x, y)
        Vec(x * cos(y), x * sin(y))
    }
}

public extension Array where Element: CoordinateSystemConvertable {
    var asCartesian: [Vec] {
        self.map { $0.asCartesian }
    }
}
