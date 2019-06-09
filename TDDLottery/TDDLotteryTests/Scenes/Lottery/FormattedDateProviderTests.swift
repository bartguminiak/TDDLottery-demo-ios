@testable import TDDLottery
import XCTest

class FormattedDateProviderTests: XCTestCase {

    var sut: FormattedDateProvider!
    var dateFormatter: DateFormatter!
    var dateStub: Date!

    override func setUp() {
        super.setUp()
        dateFormatter = DateFormatter()
        dateStub = Date(timeIntervalSince1970: 0)
        sut = FormattedDateProvider(dateFormatter: dateFormatter,
                                    currentDate: { [unowned self] in self.dateStub })
    }

    func test_whenInitialized_shouldSetupDateFormattersDateFormat() {
        XCTAssertEqual(dateFormatter.dateFormat, "d/M/YYYY")
    }

    func test_whenDateStringCalled_shouldReturnCorrectString() {
        XCTAssertEqual(sut.stringDate(), "1/1/1970")
    }

}
