//
//  AppDelegate.swift
//  login
//
//  Created by Oğulcan on 11/05/2018.
//  Copyright © 2018 ogulcan. All rights reserved.
//

import UIKit
import KeychainAccess

typealias App = AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    static var keychain: Keychain?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Let's assume there are some libs that have to be initiliazed.
        /// FirebaseApp.configure()
        /// Fabric.with([Crashlytics.self])
        /// Crash.sharedInstance().isCrashCollectionEnabled = App.config.shouldReport()
        App.keychain = Keychain(server: Bundle.main.bundleIdentifier!, protocolType: .https)

        
        // Let's initiliaze window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
        
        // Let's check if user availability
        if App.keychain!["token"] != nil {
            // Show home page
        } else {
            // Show login page
        }
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    
}

