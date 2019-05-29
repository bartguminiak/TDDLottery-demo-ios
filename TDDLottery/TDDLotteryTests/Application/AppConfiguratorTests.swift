@testable import TDDLottery
import XCTest

class AppConfiguratorTests: XCTestCase {

    var sut: AppConfigurator!
    var windowSpy: WindowSpy!
    var viewConrollerSub: UIViewController!

    override func setUp() {
        super.setUp()
        windowSpy = WindowSpy()
        viewConrollerSub = UIViewController()
        sut = AppConfigurator(windowFactory: { [unowned self] in self.windowSpy },
                              rootViewControllerFactory: { [unowned self] in self.viewConrollerSub })
    }

    func testRootViewController() {
        let window = sut.configuredWindow()
        XCTAssertEqual(window.rootViewController, viewConrollerSub)
    }

    func testMakeVisible() {
        _ = sut.configuredWindow()
        XCTAssert(windowSpy.didCallMakeKeyAndVisible)
    }

}