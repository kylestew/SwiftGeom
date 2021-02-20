import XCTest
import GeomAPI
@testable import GeomPolyUtils

final class AreaTests: XCTestCase {
    func testSimplePolyArea() {
        let points = [
            Vec(0, 0),
            Vec(2, 0),
            Vec(2, 1),
        ]
        let computed = GeomPolyUtils.polyArea2(pts: points)
        let expected = 0.5 * 2 * 1
        XCTAssertEqual(computed, expected)
    }

    func testPolyArea() {
        let points = [
            Vec(0.72, 2.28),
            Vec(2.66, 4.71),
            Vec(5, 3.5),
            Vec(3.63, 2.52),
            Vec(4, 1.6),
            Vec(1.9, 1),
        ]
        let computed = GeomPolyUtils.polyArea2(pts: points)
        let expected = -8.3593 // clockwise poly
        XCTAssertEqual(computed, expected, accuracy: 0.0001)
    }

    func testPolyArea2() {
        let points = [
            Vec(-4, 6),
            Vec(-4, -8),
            Vec(8, -8),
            Vec(8, -4),
            Vec(4, -4),
            Vec(4, 6),
        ]
        let computed = GeomPolyUtils.polyArea2(pts: points)
        let expected = 128.0
        XCTAssertEqual(computed, expected)
    }

    func testPointArea() {
        let computed = GeomPolyUtils.polyArea2(pts: [ Vec(0, 1) ])
        let expected = 0.0
        XCTAssertEqual(computed, expected)
    }

    func testLineArea() {
        let points = [
            Vec(0.72, 2.28),
            Vec(2.66, 4.71),
        ]
        let computed = GeomPolyUtils.polyArea2(pts: points)
        let expected = 0.0
        XCTAssertEqual(computed, expected)
    }
}
