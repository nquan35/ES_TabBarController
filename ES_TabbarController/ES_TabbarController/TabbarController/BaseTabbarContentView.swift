//
//  BaseTabbarContentViewView.swift
//  ES_TabbarController
//
//  Created by Quan on 02/05/2023.
//

import UIKit
import Foundation
import ESTabBarController_swift

class BaseTabbarContentView: ESTabBarItemContentView {
       override init(frame: CGRect) {
            super.init(frame: frame)
           textColor = .green
           highlightTextColor = .red
           iconColor = .gray
           highlightIconColor = .orange

           renderingMode = .alwaysOriginal
           itemContentMode = .alwaysOriginal
           titleLabel.font = UIFont.systemFont(ofSize: 10)
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
