@testable import TDDLottery
import Testing
import UIKit

@MainActor
struct AppDelegateTests {

    @Test func applicationLaunchSucceeds() {
        let sut = AppDelegate()
        #expect(sut.application(UIApplication.shared, didFinishLaunchingWithOptions: nil))
    }

    @Test func sceneManifestRegistersSceneDelegate() throws {
        let manifest = try #require(Bundle(for: AppDelegate.self)
            .object(forInfoDictionaryKey: "UIApplicationSceneManifest") as? [String: Any])
        #expect(manifest["UIApplicationSupportsMultipleScenes"] as? Bool == false)
        let configurations = try #require(manifest["UISceneConfigurations"] as? [String: Any])
        let applicationConfigurations = try #require(
            configurations["UIWindowSceneSessionRoleApplication"] as? [[String: Any]])
        let configuration = try #require(applicationConfigurations.first)
        let delegateClassName = try #require(configuration["UISceneDelegateClassName"] as? String)
        #expect(delegateClassName == NSStringFromClass(SceneDelegate.self))
    }

}
