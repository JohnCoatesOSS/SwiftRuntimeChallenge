//
//  AppDelegate.swift
//  Created on 5/16/20
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpWindow()
        return true
    }

    func setUpWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        let rootVC = UIViewController()
        let navigationController = UINavigationController(rootViewController: rootVC)
        window.rootViewController = navigationController
        self.window = window
    }

}

