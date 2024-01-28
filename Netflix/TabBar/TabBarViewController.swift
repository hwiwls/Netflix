//
//  TabBarViewController.swift
//  Netflix
//
//  Created by hwijinjeong on 1/29/24.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarConfig()
        
        view.backgroundColor = .darkGray
    }
    
    private func tabBarConfig() {
        tabBar.barTintColor = .darkGray
        tabBar.tintColor = .white
        tabBar.isTranslucent = false
        
        let homeViewController = UINavigationController(
            rootViewController: HomeViewController()
        )
        
        let newHotViewController = UINavigationController(
            rootViewController: NewHotViewController()
        )
        
        let savedContentsViewController = UINavigationController(
            rootViewController: SavedContentsViewController()
        )
        
        homeViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "house")?
                .withRenderingMode(.alwaysOriginal)
                .withTintColor(.lightGray),
            selectedImage: UIImage(systemName: "house")
        )
        
        
        newHotViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "plus.magnifyingglass")?
                .withRenderingMode(.alwaysOriginal)
                .withTintColor(.lightGray),
            selectedImage: UIImage(systemName: "plus.magnifyingglass")
        )
        
        savedContentsViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "square.and.arrow.down.on.square.fill")?
                .withRenderingMode(.alwaysOriginal)
                .withTintColor(.lightGray),
            selectedImage: UIImage(systemName: "square.and.arrow.down.on.square.fill")
        )
        
        let tabItems = [
            homeViewController,
            newHotViewController,
            savedContentsViewController
        ]
        
//        tabItems.forEach {
//            $0.isNavigationBarHidden = true
//            $0.navigationBar.isTranslucent = false
//        }
        
        setViewControllers(tabItems, animated: true)
    }

}
