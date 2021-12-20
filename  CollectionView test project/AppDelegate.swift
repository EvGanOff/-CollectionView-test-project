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

        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor.systemGray2
            UITabBar.appearance().standardAppearance = tabBarAppearance
            if #available(iOS 13, *) {
                let appearance = UINavigationBarAppearance()
                let appearanceTab = UITabBarItemAppearance()
                appearance.configureWithOpaqueBackground()
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }

            if #available(iOS 13.0, *) {
                if #available(iOS 15.0, *) {
                    UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                } else {
                    // Fallback on earlier versions
                }
            }
        }

        let tabBarController = UITabBarController()


        let firstViewController = FirstNavigationController()
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        firstViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: .init(systemName: "photo.fill.on.rectangle.fill"), tag: 0)

        let secondViewController = UIViewController()
        secondViewController.view.backgroundColor = .systemBlue
        secondViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: .init(systemName: "heart.text.square.fill"), tag: 1)

        let thirdViewController = UIViewController()
        let thirdNavigationController = UINavigationController(rootViewController: thirdViewController)

        thirdViewController.view.backgroundColor = .systemBrown
        thirdViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: .init(systemName: "square.stack.fill"), tag: 2)

        let fourViewController = UIViewController()
        fourViewController.view.backgroundColor = .systemGreen
        fourViewController.tabBarItem = UITabBarItem(title: "Поиск", image: .init(systemName: "magnifyingglass"), tag: 3)

        tabBarController.setViewControllers([
            firstNavigationController,
            secondViewController,
            thirdNavigationController,
            fourViewController], animated: true)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()


        return true
    }
}

