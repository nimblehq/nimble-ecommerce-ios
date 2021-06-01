//
//  DeeplinkUtility.swift
//  ecommerce-ios
//
//  Created by Bliss on 21/5/21.
//

import Foundation

enum DeeplinkUtility {

    static let deeplinkScheme = "ecommerce-swiftui://"
    
    static func idFromURL(_ url: URL) -> Int? {
        return Int(url.host ?? "")
    }
}
