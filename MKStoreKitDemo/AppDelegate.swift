//
//  AppDelegate.swift
//  MKStoreKitDemo
//
//  Created by Mugunth Kumar on 4/11/15.
//  Copyright © 2015 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        MKStoreKit.shared().startProductRequest()
        NotificationCenter.default.addObserver(
            forName: .mkStoreKitProductsAvailable,
            object: nil,
            queue: OperationQueue.main,
            using: { (note) -> Void in
                print(MKStoreKit.shared().availableProducts)
            }
        )
        return true
    }

}
