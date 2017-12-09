//
//  StatusIndicators.swift
//
//  Created by Eric Dobyns & Luis Garcia.
//  Copyright © 2017 Eric Dobyns & Luis Garcia. All rights reserved.
//

import UIKit

public class StatusIndicators {
    
    // MARK: - Background Tags
    fileprivate enum BackgroundIdentifier: Int {
        case customActivityIndicator = 4178567
    }
    
    
    // MARK: - System Indicators
    public func showSystemIndicator() {
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = true
        }
    }

    public func hideSystemIndicator() {
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
    
    // MARK: - Set Status Bar Color
    public func setStatusBarColor(color: UIColor) {
        guard let statusBarWindow: UIWindow = UIApplication.shared.value(forKey: "statusBarWindow") as? UIWindow,
                let statusBarView: UIView = statusBarWindow.value(forKey: "statusBar") as? UIView else {
                    print("DEBUG: Coult not reference the status bar")
                    return
        }
        
        UIView.animate(withDuration: 0.5) {
            statusBarView.backgroundColor = color
        }
    }
    
    // MARK: - Custom Indicators
    public func showCustomIndicator(viewController: UIViewController) {
        let view = UIView()
        view.tag = BackgroundIdentifier.customActivityIndicator.rawValue
        view.frame.size = CGSize(width: 100, height: 100)
        view.frame.origin = CGPoint(x: (UIScreen.main.bounds.size.width/2 - 50), y: (UIScreen.main.bounds.size.height/2 - 50))
        view.layer.cornerRadius = 12.0
        view.backgroundColor = .black
        
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        
        activityIndicator.frame.size = CGSize(width: 100, height: 100)
        
        DispatchQueue.main.async {
            view.addSubview(activityIndicator)
            viewController.view.addSubview(view)
            activityIndicator.startAnimating()
        }
    }
    
    public func hideCustomIndicator(viewController: UIViewController) {
        DispatchQueue.main.async {
            if let view = viewController.view.viewWithTag(BackgroundIdentifier.customActivityIndicator.rawValue) {
                view.removeFromSuperview()
            }
        }
    }
}
