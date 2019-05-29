@testable import TDDLottery
import UIKit

class AppConfiguratorStub: AppConfiguratorType {

    // MARK: - AppConfiguratorType

    func configuredWindow() -> UIWindow {
        return windowStub
    }

    // MARK: - Stubs

    var windowStub: UIWindow!

}
