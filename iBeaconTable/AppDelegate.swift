import UIKit
import CoreLocation
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?
    var locationManager = CLLocationManager()  //注意：定位物件必須為全域變數

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        //要求永遠定位授權（須配合info.plist的Privacy - Location Always Usage Description）
        locationManager.requestAlwaysAuthorization()
        //註冊本地通知
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.requestAuthorization(options: [.alert, .sound, .badge]) {
            (granted, error) in
            if !granted
            {
                print("使用者未授權")
            }
        }
        return true
    }
}
