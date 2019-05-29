import UIKit

extension Container {

    func appConfigurator() -> AppConfiguratorType {
        return AppConfigurator(windowFactory: { UIWindow(frame: UIScreen.main.bounds) },
                               rootViewControllerFactory: { [unowned self] in self.lotteryViewController() })
    }

}
