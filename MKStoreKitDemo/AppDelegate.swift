//
//  AppDelegate.swift
//  MKStoreKitDemo
//
//  Created by Mugunth Kumar on 4/11/15.
//  Copyright © 2015 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

import UIKit
import WSStoreKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MKStoreKit.shared.startProductRequest()
        NotificationCenter.default.addObserver(
            forName: .mkStoreKitProductsAvailable,
            object: nil,
            queue: OperationQueue.main,
            using: { (note) -> Void in
                print(MKStoreKit.shared.availableProducts)
            }
        )
        return true
    }

}
