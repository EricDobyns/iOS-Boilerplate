//
//  CALayer.swift
//  Shrubhub
//
//  Created by Eric Dobyns on 3/15/17.
//  Copyright © 2017 HOTB Software Solutions. All rights reserved.
//

import UIKit


// Extend Interface Builder to allow for Border UI Color as a runtime attribute
extension CALayer {
    var borderUIColor: UIColor {
        set {
            self.borderColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: self.borderColor!)
        }
    }
}
