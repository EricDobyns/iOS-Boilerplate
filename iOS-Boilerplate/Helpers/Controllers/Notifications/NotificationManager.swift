//
//  NotificationManager.swift
//
//  Created by Eric Dobyns & Luis Garcia.
//  Copyright © 2017 Eric Dobyns & Luis Garcia. All rights reserved.
//

import UIKit
import UserNotifications


class NotificationManager {

    func registerForPushNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { (granted, error) in
            let application = UIApplication.shared
            DispatchQueue.main.async {
                application.registerForRemoteNotifications()
            }
        }
    }
    
    
    func getAuthorizationStatus(completionHandler: @escaping (Bool) -> ()) {
        UNUserNotificationCenter.current().getNotificationSettings { (notificationSettings) in
            switch notificationSettings.authorizationStatus {
            case .authorized:
                print("Push Notifications are Authorized")
                completionHandler(true)
            case .denied:
                print("Push Notifications are Disabled")
                completionHandler(false)
            case .notDetermined:
                print("Push Notifications have not yet been determined...")
                completionHandler(false)
            }
        }
    }
}
