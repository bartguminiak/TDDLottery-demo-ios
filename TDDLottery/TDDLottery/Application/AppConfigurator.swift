import UIKit

protocol AppConfiguratorType {
    func configuredWindow() -> UIWindow
}

class AppConfigurator: AppConfiguratorType {

    init(windowFactory: @escaping () -> UIWindow,
         rootViewControllerFactory: @escaping () -> UIViewController) {
        self.windowFactory = windowFactory
        self.rootViewControllerFactory = rootViewControllerFactory
    }

    // MARK: - AppConfiguratorType

    func configuredWindow() -> UIWindow {
        let window = windowFactory()
        window.rootViewController = rootViewControllerFactory()
        window.makeKeyAndVisible()
        return window
    }

    // MARK: - Privates

    private let windowFactory: () -> UIWindow
    private let rootViewControllerFactory: () -> UIViewController

}
