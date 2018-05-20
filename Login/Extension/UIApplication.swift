//
//  UIApplication.swift
//  login
//
//  Created by Oğulcan on 20/05/2018.
//  Copyright © 2018 ogulcan. All rights reserved.
//

import UIKit

extension UIApplication {
    
    static var loginAnimation: UIViewAnimationOptions = .transitionFlipFromRight
    static var logoutAnimation: UIViewAnimationOptions = .transitionCrossDissolve
    
    public static func setRootView(_ viewController: UIViewController,
                                   options: UIViewAnimationOptions = .transitionFlipFromRight,
                                   animated: Bool = true,
                                   duration: TimeInterval = 0.5,
                                   completion: (() -> Void)? = nil) {
        guard animated else {
            UIApplication.shared.keyWindow?.rootViewController = viewController
            return
        }
        
        UIView.transition(with: UIApplication.shared.keyWindow!, duration: duration, options: options, animations: {
            let oldState = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            UIApplication.shared.keyWindow?.rootViewController = viewController
            UIView.setAnimationsEnabled(oldState)
        }) { _ in
            completion?()
        }
    }
}
