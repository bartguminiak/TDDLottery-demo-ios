@testable import TDDLottery
import XCTest

class LotteryViewModelTests: XCTestCase {

    var sut: LotteryViewModel!
    var numberGeneratorStub: NumberGeneratorStub!
    var circleViewModelSpies: [CircleViewModelType]!

    override func setUp() {
        super.setUp()
        numberGeneratorStub = NumberGeneratorStub()
        sut = LotteryViewModel(numberGenerator: numberGeneratorStub,
                               circleViewModelFactory: { CircleViewModelStub(number: $0) })
        circleViewModelSpies = []
        sut.circleViewModels = { [unowned self] in
            self.circleViewModelSpies = $0
        }
    }

    func test_whenViewDidLoadNotCalled_shouldNotReturnViewModelsYet() {
        XCTAssertEqual(circleViewModelSpies.isEmpty, true)
    }

    func test_whenViewDidLoadCalled_shouldReturnCorrectViewModels() {
        numberGeneratorStub.generatedNumbersStub = [99]
        sut.viewDidLoad()
        let spies: [CircleViewModelStub] = circleViewModelSpies as! [CircleViewModelStub]
        XCTAssertEqual(spies.map { $0.numberSpy }, [99])
    }

}
