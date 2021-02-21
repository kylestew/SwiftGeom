import XCTest
import GeomAPI
@testable import Geom

final class VerticesTests: XCTestCase {
    func testRect() {
        let rect = Rect(pos: Vec(1, 4), size: Vec(2, 3))
        let expected = [
            Vec(1, 4),
            Vec(3, 4),
            Vec(3, 7),
            Vec(1, 7),
        ]
        XCTAssertEqual(rect.vertices, expected)
    }
}
