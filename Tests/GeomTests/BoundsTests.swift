import XCTest
import GeomAPI
@testable import Geom

final class BoundsTests: XCTestCase {
    func testRect() {
        let expected = Rect(pos: Vec(1.23, 4.56), size: Vec(12, 24.123))
        XCTAssertEqual(expected.bounds, expected)
    }

    func testCircle() {
        let pos = Vec(2.1, 3.2)
        let r = 12.345
        let circle = Circle(pos: pos, r: r)
        let expected = Rect(pos: pos, size: Vec(2 * r, 2 * r))
        XCTAssertEqual(circle.bounds, expected)
    }

    func testEllipse() {
//        let pos = Vec3(x: 2.1, y: 3.2)
//        let r = 12.345
//        let circle = Circle(pos: pos, r: r)
//        let expected = Rect(pos: pos, w: 2 * r, h: 2 * r)
//        XCTAssertEqual(circle.bounds, expected)
    }
}
