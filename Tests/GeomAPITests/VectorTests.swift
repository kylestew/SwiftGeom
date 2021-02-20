import XCTest
@testable import GeomAPI

final class VectorTests: XCTestCase {
    func test2DVector() {
        let vec2 = Vec(1.23, 3.21)
        XCTAssertEqual(vec2.x, 1.23)
        XCTAssertEqual(vec2.y, 3.21)
        XCTAssertEqual(vec2.z, 0)
        XCTAssertEqual(vec2.w, 0)
    }

    func test3DVector() {
        let vec3 = Vec(1.23, 4.56, 7.89)
        XCTAssertEqual(vec3.x, 1.23)
        XCTAssertEqual(vec3.y, 4.56)
        XCTAssertEqual(vec3.z, 7.89)
        XCTAssertEqual(vec3.w, 0)
    }

    func test4DVector() {
        let vec4 = Vec(1.23, 4.56, 7.89, 10.11)
        XCTAssertEqual(vec4.x, 1.23)
        XCTAssertEqual(vec4.y, 4.56)
        XCTAssertEqual(vec4.z, 7.89)
        XCTAssertEqual(vec4.w, 10.11)
    }

    func testBasicOperators() {
        let vec2 = Vec(1.23, 3.21)
        let vec3 = Vec(1.23, 4.56, 7.89)
        let expected = Vec(1.23 + 1.23, 3.21 + 4.56, 7.89)
        XCTAssertEqual(vec2 + vec3, expected)
        XCTAssertEqual(-vec2, Vec(-1.23, -3.21))
    }

    func testDotProduct() {
        let a = Vec(1, 2, 3)
        let b = Vec(2, 3, 4)
        XCTAssertEqual(a.dot(b), 20, accuracy: 0.001)
    }

    func testCrossProduct() {
        let a = Vec(1, 2, 3)
        let b = Vec(2, 3, 4)
        let expectedAB = Vec(-1, 2, -1)
        let expectedBA = Vec(1, -2, 1)
        XCTAssertEqual(a.cross(b), expectedAB)
        XCTAssertEqual(b.cross(a), expectedBA)
    }

    func testFunctions() {
        let vec2 = Vec(1.23, 3.21)
        XCTAssertEqual(vec2.length, 3.437, accuracy: 0.001)
        XCTAssertEqual(vec2.unit.x, 0.357, accuracy: 0.001)
        XCTAssertEqual(vec2.unit.y, 0.933, accuracy: 0.001)
    }
}
