//
//  AppDelegate.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

            let window = UIWindow(frame: UIScreen.main.bounds)
            let tabBarController = TabBarController()
            window.rootViewController = tabBarController
            window.makeKeyAndVisible()
            self.window = window

            return true
    }
}

