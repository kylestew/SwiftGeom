import XCTest
import GeomAPI
@testable import Geom

final class BoundsTests: XCTestCase {
    func testCircle() {
        let pos = Vec(2.1, 3.2)
        let r = 12.345
        let circle = Circle(pos: pos, r: r)
        // circle position is middle, rect position is top left
        let expected = Rect(pos: pos - Vec(r, r), size: Vec(2 * r, 2 * r))
//        XCTAssertEqual(circle.bounds, expected)
    }

    func testEllipse() {
        let pos = Vec(2.1, 3.2)
        let r = Vec(2, 3)
        let ellipse = Ellipse(pos: pos, r: r)
        let expected = Rect(pos: pos - r, size: 2 * r)
//        XCTAssertEqual(ellipse.bounds, expected)
    }

    func testLine() {
//        let pos = Vec3(x: 2.1, y: 3.2)
//        let r = 12.345
//        let circle = Circle(pos: pos, r: r)
//        let expected = Rect(pos: pos, w: 2 * r, h: 2 * r)
//        XCTAssertEqual(circle.bounds, expected)
    }

    func testPolygon() {
//        let poly = Polygon(pts: [
//            Vec(-1, 1),
//            Vec(1, 1),
//            Vec(1, -1),
//            Vec(-1, -1)
//        ])
//        let expected = 2.0 * 2.0
//        XCTAssertEqual(poly.area, expected)
    }

    func testPolyline() {
//        let pos = Vec3(x: 2.1, y: 3.2)
//        let r = 12.345
//        let circle = Circle(pos: pos, r: r)
//        let expected = Rect(pos: pos, w: 2 * r, h: 2 * r)
//        XCTAssertEqual(circle.bounds, expected)
    }

    func testRect() {
        let rect = Rect(pos: Vec(1.23, 4.56), size: Vec(12, 24.123))
        let expected = rect
        XCTAssertEqual(rect.bounds, expected)
    }

    func testTriangle() {
//        let tri = Triangle(pts: [
//            Vec(-1, 0),
//            Vec(1, 0),
//            Vec(1, 2),
//        ])
//        let expected = 0.5 * 2 * 2
//        XCTAssertEqual(tri.area, expected)
    }
}
