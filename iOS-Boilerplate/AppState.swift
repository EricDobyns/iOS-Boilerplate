//
//  AppState.swift
//  iOS-Boilerplate
//
//  Created by Macbook Pro on 12/5/17.
//

import Foundation


public class AppState {
    
    // Singleton - Initialize Persistent State
    static let shared = AppState()
    
    // Public Variables
    public var currentUser: User? = nil
    public var currentSession: URLSession? = nil
    // TODO: Add currentNetworkState
}
