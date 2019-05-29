@testable import TDDLottery
import XCTest

class AppDelegateTests: XCTestCase {

    var sut: AppDelegate!
    var appConfiguratorStub: AppConfiguratorStub!

    override func setUp() {
        super.setUp()
        appConfiguratorStub = AppConfiguratorStub()
        sut = AppDelegate()
        sut.appConfigurator = appConfiguratorStub
    }

    func testConfigureWindow() {
        appConfiguratorStub.windowStub = UIWindow()
        _ = sut.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
        XCTAssertEqual(sut.window, appConfiguratorStub.windowStub)
    }

}
