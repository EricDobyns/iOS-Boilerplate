//
//  AppState.swift
//
//  Created by Eric Dobyns & Luis Garcia.
//  Copyright © 2017 Eric Dobyns & Luis Garcia. All rights reserved.
//

import Foundation


public class AppState {

    // Singleton - Initialize Persistent State
    static let shared = AppState()
    

    // MARK: - Public Variables
//    public var currentUser: User? = nil
    
    
    // MARK: - Private Variables
    fileprivate var reachability: NetworkReachability? = nil
    
    
    // MARK: - Initialization Methods
    func initialize() {
        self.observeNetworkReachability()
    }
    
    
    // MARK: - Helper Methods
    fileprivate func observeNetworkReachability() {
        self.reachability = NetworkReachability()
        
        self.reachability?.whenReachable = { reachability in
            if self.reachability?.connection == .wifi {
                StatusIndicators().setStatusBarColor(color: .clear)
            } else {
                StatusIndicators().setStatusBarColor(color: .clear)
            }
        }
        self.reachability?.whenUnreachable = { _ in
            Alert().presentToast(title: "Uh Oh!", message: "There is currently no connection to the internet.", type: .Toast, position: .Top)
            StatusIndicators().setStatusBarColor(color: .red)
        }
        
        do {
            try self.reachability?.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    
}
