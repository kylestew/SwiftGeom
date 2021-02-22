import Foundation
import GeomAPI
import GeomPolyUtils

public protocol AreaDescribable {
    var area: Double { get }
}

extension Circle : AreaDescribable {
    public var area: Double {
        Double.pi * r * r
    }
}

extension Ellipse : AreaDescribable {
    public var area: Double {
        Double.pi * r.x * r.y
    }
}

extension Polygon : AreaDescribable {
    public var area: Double {
        abs(GeomPolyUtils.polyArea2(pts: self.points))
    }
}

extension Rect : AreaDescribable {
    public var area: Double {
        size.width * size.height
    }
}

extension Triangle : AreaDescribable {
    public var area: Double {
        abs(GeomPolyUtils.polyArea2(pts: self.points))
    }
}
