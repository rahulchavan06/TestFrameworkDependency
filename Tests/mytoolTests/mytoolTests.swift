import XCTest
@testable import mytool

final class mytoolTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(mytool().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
