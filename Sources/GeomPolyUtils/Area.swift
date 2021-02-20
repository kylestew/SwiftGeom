import Foundation
import GeomAPI

struct GeomPolyUtils {
    /// Interprets given points as closed 2D polygon and computes its signed
    /// area. If result is negative, the polygon is clockwise.
    static func polyArea2(pts: [Vec]) -> Double {
        let n = pts.count - 1
        guard n > 1 else {
            return 0.0
        }

        var area: Double = 0.0
//        for i in 0..<n {
//            area += Vec.cross(u: pts[i], v: pts[i + 1])
//        }
//        area += Vec.cross(u: pts[n], v: pts[0])
        return abs(area) / 2.0
    }
}
