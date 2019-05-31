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

    func test_whenViewLoaded_circleViewModelsProvided_shouldhaveCorrectData() {
        sut.viewDidLoad()
        let viewModel1 = CircleViewModelStub()
        viewModel1.title = "test-1"
        viewModel1.color = .black
        let viewModel2 = CircleViewModelStub()
        viewModel2.title = "test-2"
        viewModel2.color = .white
        viewModelDouble.circleViewModels?([viewModel1, viewModel2])
        let customView = sut.view as! LotteryView
        let labels: [UILabel] = customView.stackView.arrangedSubviews.compactMap { $0 as? UILabel }
        XCTAssertEqual(labels.map { $0.text }, ["test-1", "test-2"])
        XCTAssertEqual(labels.map { $0.backgroundColor }, [.black, .white])
    }

}
