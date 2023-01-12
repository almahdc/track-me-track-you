//
//  AppDelegate.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // MARK: – start any app services –

        MixpanelBridge.start()
        
        // MARK: – show first controller -

        window = UIWindow()
        window?.makeKeyAndVisible()

        let firstController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Main", creator: { coder in
            ViewController(coder: coder, analyticsManager: .init(engine: MixpanelAnalyticsEngine()))
        })
        window?.rootViewController = firstController
        return true
    }
}

