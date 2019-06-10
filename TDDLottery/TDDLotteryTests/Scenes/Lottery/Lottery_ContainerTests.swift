@testable import TDDLottery
import XCTest

class Lottery_ContainerTests: XCTestCase {

    var sut: Container!

    override func setUp() {
        super.setUp()
        sut = Container()
    }

    func test_shouldResolveNumberGeneratorDependency() {
        let dependency = sut.numberGenerator()
        XCTAssert(dependency is NumberGenerator)
    }

    func test_shouldResolveViewModelDependency() {
        let dependency = sut.lotteryViewModel()
        XCTAssert(dependency is LotteryViewModel)
    }

    func test_shouldResolveViewControllerDependency() {
        let dependency = sut.lotteryViewController()
        XCTAssert(dependency is LotteryViewController)
    }

    func test_shouldResolveFormattedDateProvider() {
        let dependency = sut.formattedDateProvider()
        XCTAssert(dependency is FormattedDateProvider)
    }

}
