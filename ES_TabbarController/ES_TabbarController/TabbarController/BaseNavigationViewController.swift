//
//  BaseNavigationViewController.swift
//  ES_TabbarController
//
//  Created by Quan on 02/05/2023.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.tintColor = .gray
        self.navigationBar.barTintColor = .gray
        
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .gray
            self.navigationBar.standardAppearance = appearance
            self.navigationBar.scrollEdgeAppearance = navigationBar.standardAppearance
        }

    }
}
