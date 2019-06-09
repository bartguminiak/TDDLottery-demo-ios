@testable import TDDLottery
import XCTest

class LotteryViewModelTests: XCTestCase {

    var sut: LotteryViewModel!
    var numberGeneratorStub: NumberGeneratorStub!
    var formattedDateProvider: FormattedDateProviderStub!
    var todayTitleSpy: String?
    var circleViewModelSpies: [CircleViewModelType]?

    override func setUp() {
        super.setUp()
        numberGeneratorStub = NumberGeneratorStub()
        formattedDateProvider = FormattedDateProviderStub()
        sut = LotteryViewModel(numberGenerator: numberGeneratorStub,
                               dateProvider: formattedDateProvider,
                               circleViewModelFactory: { CircleViewModelStub(number: $0) })
        sut.todayTitle = { [unowned self] in
            self.todayTitleSpy = $0
        }
        sut.circleViewModels = { [unowned self] in
            self.circleViewModelSpies = $0
        }
        formattedDateProvider.stringDateStub = "test-date"
        numberGeneratorStub.generatedNumbersStub = [99]
    }

    override func tearDown() {
        super.tearDown()
        todayTitleSpy = nil
        circleViewModelSpies = []
    }

    func test_whenViewDidLoadNotCalled_shouldNotReturnTitle() {
        XCTAssertNil(todayTitleSpy)
    }

    func test_whenViewDidLoadNotCalled_shouldNotReturnViewModelsYet() {
        XCTAssertNil(circleViewModelSpies)
    }

    func test_whenViewDidLoad_shouldReturnCorrectTitle() {
        sut.viewDidLoad()
        XCTAssertEqual(todayTitleSpy!, "Welcome to the lottery of test-date")
    }

    func test_whenViewDidLoadCalled_shouldReturnCorrectViewModels() {
        sut.viewDidLoad()
        let spies = circleViewModelSpies as! [CircleViewModelStub]
        XCTAssertEqual(spies.map { $0.numberSpy }, [99])
    }

}
