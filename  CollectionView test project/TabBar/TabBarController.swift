//
//  TabBarController.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/21/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let mediaLibraryViewController = UINavigationController(rootViewController: MediaLibrarySubViewController())
        mediaLibraryViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
        let galleryViewController = UINavigationController(rootViewController: GalleryViewController())
        galleryViewController.view.backgroundColor = .systemBlue
        galleryViewController.tabBarItem = UITabBarItem(title: "Для вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)
        let AlbumsViewConroller = UINavigationController(rootViewController: AlbumsViewConroller())
        AlbumsViewConroller.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "square.stack.fill"), tag: 2)
        let searchViewControlller = UINavigationController(rootViewController: SearchViewController())
        searchViewControlller.view.backgroundColor = .systemGreen
        searchViewControlller.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)

        setViewControllers([mediaLibraryViewController,
                            galleryViewController,
                            AlbumsViewConroller,
                            searchViewControlller], animated: true)

        selectedIndex = 2
    }
}
