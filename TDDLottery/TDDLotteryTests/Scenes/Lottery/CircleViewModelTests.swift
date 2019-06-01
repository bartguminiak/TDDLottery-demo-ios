@testable import TDDLottery
import XCTest

class CircleViewModelTests: XCTestCase {

    var sut: CircleViewModel!

    func test_whenInitializingWith_0_shouldSetCorrectTitle() {
        sut = CircleViewModel(number: 0)
        XCTAssertEqual(sut.title, "0")
    }

    func test_whenInitializingWith_0_shouldSetCorrectColor() {
        sut = CircleViewModel(number: 0)
        XCTAssertEqual(sut.color, .green)
    }

    func test_whenInitializingWith_evenNumber_shouldSetCorrectTitle() {
        sut = CircleViewModel(number: 2)
        XCTAssertEqual(sut.title, "2")
    }

    func test_whenInitializingWith_evenNumber_shouldSetCorrectColor() {
        sut = CircleViewModel(number: 2)
        XCTAssertEqual(sut.color, .red)
    }

    func test_whenInitializingWith_unevenNumber_shouldSetCorrectTitle() {
        sut = CircleViewModel(number: 1)
        XCTAssertEqual(sut.title, "1")
    }

    func test_whenInitializingWith_unevenNumber_shouldSetCorrectColor() {
        sut = CircleViewModel(number: 1)
        XCTAssertEqual(sut.color, .black)
    }

}
