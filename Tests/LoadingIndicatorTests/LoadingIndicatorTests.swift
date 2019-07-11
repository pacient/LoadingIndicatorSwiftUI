import XCTest
@testable import LoadingIndicator

final class LoadingIndicatorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LoadingIndicator().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
