//
//  InAppPurchaseManager.swift
//  Crash Test
//
//  Created by Joseph Duffy on 08/02/2016.
//  Copyright © 2016 Yetii Ltd. All rights reserved.
//

import Foundation

public class InAppPurchaseManager: NSObject {
    // Commenting out this line will prevent the crash
    private(set) var inAppPurchasesBeingPurchased = Set<InAppPurchase>()

    public func userHasPurchasedAllInAppPurchases() -> Bool {
        return true
    }
}

public struct InAppPurchase {
    let productIdentifier: String
}

extension InAppPurchase: Hashable {
    public var hashValue: Int {
        get {
            return self.productIdentifier.hashValue
        }
    }
}

public func ==(lhs: InAppPurchase, rhs: InAppPurchase) -> Bool {
    return lhs.hashValue == rhs.hashValue
}