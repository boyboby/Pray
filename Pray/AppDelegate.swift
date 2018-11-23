//
//  AppDelegate.swift
//  Pray
//
//  Created by 潘磊 on 2018/11/19.
//  Copyright © 2018 PL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = createTabBarController()
//        window?.makeKeyAndVisible()
          return true
    }
    
//    private func createTabBarController() -> UITabBarController {
//        let tabBarController = FluidTabBarController()
//        tabBarController.tabBar.tintColor = UIColor(red: 0.2431372549, green: 0.4235294118, blue: 1, alpha: 1)
//        let viewControllers = [
//            ("News", #imageLiteral(resourceName: "news")),
//            ("Requests", #imageLiteral(resourceName: "requests")),
//            ("Events", #imageLiteral(resourceName: "events")),
//            ("Members", #imageLiteral(resourceName: "members")),
//            ("Account", #imageLiteral(resourceName: "profile"))
//            ].map(createSampleViewController)
//        tabBarController.setViewControllers(viewControllers, animated: true)
//        return tabBarController
//    }
//
//    private func createSampleViewController(title: String, icon: UIImage) -> UIViewController {
//        let viewController = UIViewController()
//        viewController.view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.968627451, alpha: 1)
//        let item = FluidTabBarItem(title: title, image: icon, tag: 0)
//        item.imageColor = #colorLiteral(red: 0.7960784314, green: 0.8078431373, blue: 0.8588235294, alpha: 1)
//        viewController.tabBarItem = item
//        return viewController
//    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

