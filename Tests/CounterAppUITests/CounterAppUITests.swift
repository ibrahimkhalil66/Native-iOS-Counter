import XCTest

final class CounterAppUITests: XCTestCase {
    func testCounterCanIncreaseDecreaseAndReset() throws {
        let app = XCUIApplication()
        app.launch()

        let value = app.staticTexts["counterValue"]
        XCTAssertEqual(value.label, "0")

        app.buttons["incrementButton"].tap()
        XCTAssertEqual(value.label, "1")

        app.buttons["decrementButton"].tap()
        XCTAssertEqual(value.label, "0")

        app.buttons["incrementButton"].tap()
        app.buttons["incrementButton"].tap()
        XCTAssertEqual(value.label, "2")

        app.buttons["resetButton"].tap()
        XCTAssertEqual(value.label, "0")
    }
}