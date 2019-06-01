@testable import TDDLottery
import XCTest

class NumberGeneratorTests: XCTestCase {

    var sut: NumberGenerator!
    var intStubs: [Int]!

    override func setUp() {
        super.setUp()
        sut = NumberGenerator(intGenerator: { [unowned self] in self.intStubs.remove(at: 0) })
    }

    func test_whenDependencyGeneratesUniqueNumbers_shouldReturnCorrectNumbers() {
        intStubs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
        let result = sut.generate()
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }

    func test_whenDependencyGeneratesNONUniqueNumbers_shouldReturnCorrectNumbers() {
        intStubs = [1, -1, 43, 1, 2, 4, 1, 1, 4, 6, 7, 8, 9]
        let result = sut.generate()
        XCTAssertEqual(result, [1, 2, 4, 6, 7])
    }

}
