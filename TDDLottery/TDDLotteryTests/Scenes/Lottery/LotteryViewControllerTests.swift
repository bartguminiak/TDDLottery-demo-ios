@testable import TDDLottery
import XCTest

class LotteryViewControllerTests: XCTestCase {

    var sut: LotteryViewController!
    var viewModelDouble: LotteryViewModelDouble!

    override func setUp() {
        super.setUp()
        viewModelDouble = LotteryViewModelDouble()
        sut = LotteryViewController(viewModel: viewModelDouble)
    }

    func testSetCustomView() {
        sut.loadView()
        XCTAssert(sut.view is LotteryView)
    }

    func testDidViewLoad() {
        sut.viewDidLoad()
        XCTAssert(viewModelDouble.didCallViewDidLoad)
    }

    func testCreatingSubviews() {
        sut.viewDidLoad()
        viewModelDouble.circleViewModels?([
            CircleViewModelStub(),
            CircleViewModelStub(),
            CircleViewModelStub()
        ])
        let customView = sut.view as! LotteryView
        XCTAssertEqual(customView.stackView.arrangedSubviews.count, 3)
    }

}
