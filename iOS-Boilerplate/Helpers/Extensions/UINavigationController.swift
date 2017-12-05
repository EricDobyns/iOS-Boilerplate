//
//  UINavigationController.swift
//  Shrubhub
//
//  Created by Eric Dobyns on 3/23/17.
//  Copyright © 2017 HOTB Software Solutions. All rights reserved.
//

import UIKit


// MARK: - UINavigationController Extensions
extension UINavigationController {
    
    enum AnimationType {
        case Fade
        case MoveInFromBottom
        case MoveInFromTop
        case MoveInFromRight
        case RevealFromTop
        case RevealFromBottom
    }
    
    func pop(animated: Bool) {
        _ = self.popViewController(animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        _ = self.popToRootViewController(animated: animated)
    }
    
    func setNextTransition(_ animationType: AnimationType) {
        let transition = CATransition()
        transition.duration = 0.25
        
        switch animationType {
        case .Fade:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            transition.type = kCATransitionFade
        case .MoveInFromBottom:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromTop
        case .MoveInFromTop:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromBottom
        case .MoveInFromRight:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromRight
        case .RevealFromTop:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            transition.type = kCATransitionReveal
            transition.subtype = kCATransitionFromBottom
        case .RevealFromBottom:
            transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            transition.type = kCATransitionReveal
            transition.subtype = kCATransitionFromTop
        }
        
        self.view.layer.add(transition, forKey: kCATransition)
    }
}

