import UIKit

protocol AppConfiguratorType {
    func configuredWindow() -> UIWindow
}

class AppConfigurator: AppConfiguratorType {

    init(windowFactory: @escaping () -> UIWindow) {
        self.windowFactory = windowFactory
    }

    // MARK: - AppConfiguratorType

    func configuredWindow() -> UIWindow {
        fatalError()
    }

    // MARK: - Privates

    private let windowFactory: () -> UIWindow

}
