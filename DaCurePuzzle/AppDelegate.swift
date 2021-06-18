let STARIDIOM = "star_idiom"
import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var appManager = AppManager()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let launchImage = UIImage(named: "homeBg")
        initJpush(launchOptions, jPushAppKey: "73c0bac24bf5d673473eb784")
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = OC_LaunchViewController.instance(appID: "1572963795", launchImage: launchImage)
        window?.makeKeyAndVisible()
        
        let homePage = HomeViewController()
        let idiomNav = UINavigationController(rootViewController: homePage)
        AppManager.image.chooseController = idiomNav
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    func applicationWillTerminate(_ application: UIApplication) {
    }
}
private func sp_checkNetWorking() {
    print("Check your Network")
}
private func sp_didGetInfoSuccess() {
    print("Get User Success")
}
private func sp_getUsersMostLikedSuccess() {
    print("Get Info Success")
}

private func sp_upload() {
    print("Get Info Success")
}
