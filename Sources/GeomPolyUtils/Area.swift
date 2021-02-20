import Foundation
import GeomAPI

public struct GeomPolyUtils {
    /// Interprets given points as closed 2D polygon and computes its signed
    /// area. If result is negative, the polygon is clockwise.
    public static func polyArea2(pts: [Vec]) -> Double {
        let n = pts.count - 1
        guard n > 1 else {
            return 0.0
        }

        var area: Double = 0.0
        for i in 0..<n {
            area += pts[i].cross2(pts[i + 1])
        }
        area += pts[n].cross2(pts[0])
        return area / 2.0
    }
}
