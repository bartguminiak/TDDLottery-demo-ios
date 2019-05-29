import UIKit

class WindowSpy: UIWindow {

    override func makeKeyAndVisible() {
        didCallMakeKeyAndVisible = true
    }

    // MARK: - Spies

    private(set) var didCallMakeKeyAndVisible = false

}
