import Foundation
import GeomAPI
import GeomPolyUtils

public protocol AreaDescribable {
    var area: Double { get }
}

extension Rect : AreaDescribable {
    public var area: Double {
        size.width * size.height
    }
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

/*
export const area: MultiFn1O<IShape, boolean, number> = defmulti(dispatch);
area.add(DEFAULT, () => 0);

area.addAll(<IObjectOf<Implementation1O<unknown, boolean, number>>>{
    aabb: ({ size: [w, h, d] }: AABB) => 2 * (w * h + w * d + h * d),

    arc:
        // http://cut-the-knot.org/Generalization/Cavalieri2.shtml
        ($: Arc) => 0.5 * Math.abs($.start - $.end) * $.r[0] * $.r[1],

    circle: ($: Circle) => PI * $.r ** 2,

    ellipse: ($: Ellipse) => PI * $.r[0] * $.r[1],

    group: ({ children }: Group) =>
        children.reduce((sum, $) => sum + area($, false), 0),

    plane: () => Infinity,

    poly: ($: Polygon, signed?) => {
        const area = polyArea2($.points);
        return signed ? area : Math.abs(area);
    },

    rect: ($: Rect) => $.size[0] * $.size[1],

    sphere: ($: Sphere) => 4 * PI * $.r ** 2,

    tri: ($: Triangle, signed?) => {
        const area = 0.5 * signedArea2(...(<[Vec, Vec, Vec]>$.points));
        return signed ? area : Math.abs(area);
    },
});

area.isa("quad", "poly")
 */
