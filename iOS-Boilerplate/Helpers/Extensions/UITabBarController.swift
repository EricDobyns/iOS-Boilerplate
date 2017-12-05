//
//  UITabBarController.swift
//  Shrubhub
//
//  Created by Eric Dobyns on 5/11/17.
//  Copyright © 2017 HOTB Software Solutions. All rights reserved.
//

import UIKit

extension UITabBarController {
    
    func hideTabBar() {
        var frame = self.tabBar.frame
        frame.origin.y = UIScreen.main.bounds.size.height + frame.size.height
        UIView.animate(withDuration: 0.5, animations: {
            self.tabBar.frame = frame
        })
    }
    
    func showTabBar() {
        var frame = self.tabBar.frame
        frame.origin.y = UIScreen.main.bounds.size.height - frame.size.height
        UIView.animate(withDuration: 0.5, animations: {
            self.tabBar.frame = frame
        })
    }
}
