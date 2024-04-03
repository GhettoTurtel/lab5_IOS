//
//  TabBarController.swift
//  lab_5
//
//  Created by Damir Tansykov on 21.03.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
            tabBar.layer.shadowColor = UIColor.gray.cgColor
            tabBar.layer.shadowOpacity = 0.05
            tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
            tabBar.layer.shadowRadius = 1
        
        tabBar.backgroundColor = .lightGray
        
        setupVCs()
    }
    
    private func setupVCs() {
        let dashboard = UINavigationController(
            rootViewController: InfoTabBarViewController()
        )
        let orders = UINavigationController(
            rootViewController: DownloadsTabBarViewController()
        )
        let notifications = UINavigationController(
            rootViewController: ListTabBarViewController()
        )
        
        dashboard.tabBarItem.image = .checkmark
        orders.tabBarItem.image = .add
        notifications.tabBarItem.image = .remove
    
        let viewControllers = [dashboard, orders, notifications]
        
        setViewControllers(viewControllers, animated: true)
    }
    
}
