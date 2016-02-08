//
//  AppDelegate.swift
//  Crash Test
//
//  Created by Joseph Duffy on 08/02/2016.
//  Copyright © 2016 Yetii Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Commenting out this line will prevent the crash
        InAppPurchaseManager().userHasPurchasedAllInAppPurchases()

        return true
    }


}

