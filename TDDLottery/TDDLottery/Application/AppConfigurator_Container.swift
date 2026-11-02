import UIKit

extension Container {

    func appConfigurator(windowScene: UIWindowScene) -> AppConfiguratorType {
        return AppConfigurator(windowFactory: { UIWindow(windowScene: windowScene) },
                               rootViewControllerFactory: { [unowned self] in self.lotteryViewController() })
    }

}
