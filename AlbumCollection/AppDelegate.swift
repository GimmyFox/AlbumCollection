//
//  AppDelegate.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



   
        
        var window: UIWindow?
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            let tabBarController = UITabBarController()
            
            window?.rootViewController = tabBarController
            window?.makeKeyAndVisible()
            
            

            let mediatekaNavController = UINavigationController(rootViewController: MediatekaViewController())
            mediatekaNavController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
            

            let forYouNavController = UINavigationController(rootViewController: ForYouViewController())
            forYouNavController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "square.text.square.fill"), tag: 1)


            let albumsNavController = UINavigationController(rootViewController: AlbumsViewController())
            albumsNavController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), tag: 2)
            

            let searchNavController = UINavigationController(rootViewController: SearchViewController())
            searchNavController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
            
            
            tabBarController.setViewControllers([
                mediatekaNavController,
                forYouNavController,
                albumsNavController,
                searchNavController
            ], animated: true)
            
            
            
            return true
        }
    
}



    // MARK: UISceneSession Lifecycle

   


