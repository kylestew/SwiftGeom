import Foundation
import GeomAPI

public protocol AreaDescribable {
    var area: Double { get }
}

extension Vec2 : AreaDescribable {
    public var area: Double {
        w * h
    }
}

extension Vec3 : AreaDescribable {
    public var area: Double {
        w * h * d
    }
}

extension Rect : AreaDescribable {
    public var area: Double {
        if let desc = size as? AreaDescribable {
            return desc.area
        }
        return 0
    }
}

extension Circle : AreaDescribable {
    public var area: Double {
        Double.pi * r * r
    }
}

extension Polygon : AreaDescribable {
    public var area: Double {
        0
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
