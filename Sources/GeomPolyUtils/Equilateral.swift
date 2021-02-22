import Foundation
import GeomAPI

public extension GeomPolyUtils {
    static func equilateralTriangle(a: Vec, b: Vec) -> [Vec] {
        // TODO: what does a and b do?

        []
    }
}

/*
 export const equilateralTriangle2: FnU2<Vec, Vec[]> = (a, b) => {
     const dir = sub2([], b, a);
     const c = normalize(
         null,
         perpendicularCCW([], dir),
         mag(dir) * Math.sin(THIRD_PI)
     );
     return [a, b, maddN2(null, dir, 0.5, c)];
 };

 */
