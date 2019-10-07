//
//  AppDelegate.swift
//  Blurry
//
//  Created by Andy Liang on 6/26/17.
//  Copyright © 2017 Andy Liang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate : UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        if #available(iOS 13.0, *) {
            // no customization in iOS 13+
        } else {
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.boldSystemFont(ofSize: 12),
                .kern: 2.0
            ]
            UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .normal)
        }
        return true
    }
}

@available(iOS 13.0, *) // iOS 13 Scene Support
extension AppDelegate {
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let config = UISceneConfiguration(
            name: "Default Configuration", sessionRole: connectingSceneSession.role)
        config.delegateClass = SceneDelegate.self
        config.storyboard = UIStoryboard(name: "Main", bundle: .main)
        return config
    }
}
