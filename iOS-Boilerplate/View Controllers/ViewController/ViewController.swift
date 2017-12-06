//
//  ViewController.swift
//
//  Created by Eric Dobyns & Luis Garcia.
//  Copyright © 2017 Eric Dobyns & Luis Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlet Variables
    
    
    
    // MARK: - Private Variables
    
    
    
    // MARK: - View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getUserAsDictionary { (user) in
            print(user)
        }
    }
}


// MARK: - API Methods
extension ViewController {
    func getUserAsDictionary(completion: @escaping ([String: Any]) -> ()) {
        APIManager().getUserAsDictionary { (result) in
            switch result {
            case .error(let error):
                let err = error as? NetworkError
                Alert().presentAlert(viewController: self, title: "Uh oh!", message: err?.localizedDescription, type: .Alert, actions: [("Okay", .default)], completionHandler: nil)
            case .data(let user):
                completion(user)
            }
        }
    }
}
