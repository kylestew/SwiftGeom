import XCTest
import GeomAPI
@testable import GeomPolyUtils

final class EquilateralTests: XCTestCase {
    func testSimpleEquilateralTriangle() {
        let a = Vec(0, 0)
        let b = Vec(0, 0)
        let computed = GeomPolyUtils.equilateralTriangle(a: a, b: b)
//        let expected = 0.5 * 2 * 1
//        XCTAssertEqual(computed, expected)
    }
}
