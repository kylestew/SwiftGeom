import XCTest
import GeomAPI
@testable import GeomPolyUtils

final class BoundsTests: XCTestCase {
    func testSimplePolyArea() {
        let points = [
            Vec(-1, -2),
            Vec(5, -3),
            Vec(0, 4),
        ]
        let expected = (
            Vec(-1, -3),
            Vec(5, 4)
        )
        let computed = GeomPolyUtils.bounds(pts: points)
        XCTAssertEqual(computed.0, expected.0)
        XCTAssertEqual(computed.1, expected.1)
    }
}
