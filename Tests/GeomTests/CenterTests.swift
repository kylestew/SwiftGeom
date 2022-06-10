import XCTest
import GeomAPI
@testable import Geom

final class CenterTests: XCTestCase {
    func testCircle() {
        let pos = Vec(2.1, 3.2)
        let r = 12.345
        let circle = Circle(pos: pos, r: r)
        let expected = pos
//        XCTAssertEqual(circle.center, expected)
    }

    func testEllipse() {
        let pos = Vec(2.1, 3.2)
        let r = Vec(2, 3)
        let ellipse = Ellipse(pos: pos, r: r)
        let expected = r
//        XCTAssertEqual(ellipse.center, expected)
    }
}
