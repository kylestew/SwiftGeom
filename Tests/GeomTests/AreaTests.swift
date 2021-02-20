import XCTest
import GeomAPI
@testable import Geom

final class AreaTests: XCTestCase {
    func testRect() {
        let rect = Rect(pos: Vec(1.23, 4.56), size: Vec(12, 24.123))
        let expected = rect.width * rect.height
        XCTAssertEqual(rect.area, expected)
    }

    func testCircle() {
        let r = 12.345
        let circle = Circle(pos: Vec(3, 2), r: r)
        let expected = Double.pi * r * r
        XCTAssertEqual(circle.area, expected)
    }

    func testEllipse() {
        let r = Vec(1.23, 4.56)
        let ellipse = Ellipse(pos: Vec(3, 2), r: r)
        let expected = 17.62
        XCTAssertEqual(ellipse.area, expected, accuracy: 0.001)
    }

    func testPolygon() {
        let poly = Polygon(points: [
            Vec(-1, 1),
            Vec(1, 1),
            Vec(1, -1),
            Vec(-1, -1)
        ])
        let expected = 2.0 * 2.0
        XCTAssertEqual(poly.area, expected)
    }
}
