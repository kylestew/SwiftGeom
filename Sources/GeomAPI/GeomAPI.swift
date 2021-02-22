import Foundation

public protocol BoundsLike {
    var pos: Vec { get }
    var size: Vec { get }
}

public protocol PCLike {
    var points: [Vec] { get }
}

public protocol SphereLike {
    var pos: Vec { get }
    var r: Double { get }
}

