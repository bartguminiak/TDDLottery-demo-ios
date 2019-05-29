import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    override init() {
        self.container = Container()
        self.appConfigurator = container.appConfigurator()
        super.init()
    }

    var window: UIWindow?
    var appConfigurator: AppConfiguratorType

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = appConfigurator.configuredWindow()
        return true
    }

    // MARK: - Privates

    private let container: Container

}

