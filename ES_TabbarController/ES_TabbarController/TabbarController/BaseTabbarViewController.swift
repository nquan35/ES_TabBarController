//
//  BaseTabbarViewController.swift
//  ES_TabbarController
//
//  Created by Quan on 02/05/2023.
//

import UIKit
import ESTabBarController_swift
import Foundation

class BaseTabbarViewController: ESTabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Notify", bundle:nil)
        let notifyVC = storyBoard.instantiateViewController(withIdentifier: "Notify") as! NotifyViewController
        
        let storyBoard1 : UIStoryboard = UIStoryboard(name: "Setting", bundle:nil)
        let settingVC = storyBoard1.instantiateViewController(withIdentifier: "Setting") as! SettingViewController
        
        let notifyViewController = BaseNavigationViewController(rootViewController: notifyVC)
        let settingViewController = BaseNavigationViewController(rootViewController: settingVC)
        
        notifyViewController.tabBarItem = ESTabBarItem.init(
            BaseTabbarContentView(),
            title: "Notify",
            image: UIImage(named: "HomeNotifyIcon"),
            selectedImage: UIImage(named: "HomeSelectedNotifyIcon")
        )
        
        settingViewController.tabBarItem = ESTabBarItem.init(
            BaseTabbarContentView(),
            title: "Setting",
            image: UIImage(named: "HomeHistoryIcon"),
            selectedImage: UIImage(named: "HomeSelectedHistoryIcon")
        )
        
//        settingViewController.tabBarItem = UITabBarItem.init(title: "Setting", image: UIImage(named: "HomeHistoryIcon"), selectedImage: UIImage(named: "HomeSelectedHistoryIcon")
//        )
//
//        notifyViewController.tabBarItem = UITabBarItem.init(
//            title: "Notify",
//            image: UIImage(named: "HomeNotifyIcon"),
//            selectedImage: UIImage(named: "HomeSelectedNotifyIcon")
//        )
        self.viewControllers = [
            notifyViewController,
            settingViewController
        ]
        self.tabBar.tintColor = .green
        self.tabBar.barTintColor = .gray
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .gray

            self.tabBar.standardAppearance = appearance
            self.tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
        self.selectedIndex = 0

    }
}
