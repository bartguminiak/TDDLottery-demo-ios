@testable import TDDLottery
import XCTest

class CircleViewModelTests: XCTestCase {

    var sut: CircleViewModel!

    func test0NumberForTitle() {
        sut = CircleViewModel(number: 0)
        XCTAssertEqual(sut.title, "0")
    }

    func test0NumberForColor() {
        sut = CircleViewModel(number: 0)
        XCTAssertEqual(sut.color, .green)
    }

    func testEvenNumberForTitle() {
        sut = CircleViewModel(number: 2)
        XCTAssertEqual(sut.title, "2")
    }

    func testEvenNumberForColor() {
        sut = CircleViewModel(number: 2)
        XCTAssertEqual(sut.color, .red)
    }

    func testUnevenNumberForTitle() {
        sut = CircleViewModel(number: 1)
        XCTAssertEqual(sut.title, "1")
    }

    func testUnevenNumberForColor() {
        sut = CircleViewModel(number: 1)
        XCTAssertEqual(sut.color, .black)
    }

}
