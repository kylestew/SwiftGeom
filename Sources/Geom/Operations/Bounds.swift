import Foundation

public protocol BoundsDescribable {
    var bounds: Rect { get }
}

extension Rect : BoundsDescribable {
    public var bounds: Rect {
        self
    }
}

extension Circle : BoundsDescribable {
    public var bounds: Rect {
        .zero
//        Rect(pos: pos, size: Vec2(x: 2 * r, y: 2 * r))
    }
}

//extension Ellipse : Bounds {
//    public var bounds: Rect {
//        Rect.init(pos: pos, w: 2 * r, h: 2 * r)
//    }
//}
