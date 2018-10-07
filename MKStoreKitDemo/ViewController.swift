//
//  ViewController.swift
//  MKStoreKitDemo
//
//  Created by Mugunth Kumar on 4/11/15.
//  Copyright © 2015 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
            forName: .mkStoreKitProductPurchased,
            object: nil,
            queue: OperationQueue.main,
            using: { (note) -> Void in
                print("Purchased product: \(note.object!)")
            }
        )

        NotificationCenter.default.addObserver(
            forName: .mkStoreKitDownloadCompleted,
            object: nil,
            queue: OperationQueue.main,
            using: { (note) -> Void in
                print("Downloaded product: \(note.userInfo!)")
            }
        )

        NotificationCenter.default.addObserver(
            forName: .mkStoreKitDownloadProgress,
            object: nil,
            queue: OperationQueue.main,
            using: { (note) -> Void in
                print("Downloading product: \(note.userInfo!)")
            }
        )
    }

    @IBAction func buyConsumable(sender: AnyObject) {
        MKStoreKit.shared().initiatePaymentRequestForProduct(withIdentifier: "com.steinlogic.iapdemo.consumable")
    }

    @IBAction func buyNonConsumable(sender: AnyObject) {
        MKStoreKit.shared().initiatePaymentRequestForProduct(withIdentifier: "com.steinlogic.iapdemo.nonconsumablenocontent")
    }

    @IBAction func buySubscriptionWithContent(sender: AnyObject) {
        MKStoreKit.shared().initiatePaymentRequestForProduct(withIdentifier: "com.steinlogic.iapdemo.quarterly")
    }

    @IBAction func buyNonConsumableWithoutContent(sender: AnyObject) {
        MKStoreKit.shared().initiatePaymentRequestForProduct(withIdentifier: "com.steinlogic.iapdemo.nonconsumablewithcontent")
    }

}
