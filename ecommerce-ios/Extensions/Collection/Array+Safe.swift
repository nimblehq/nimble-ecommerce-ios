//
//  Array+Safe.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import Foundation

extension Array {

    subscript(safe index: Index) -> Element? {
        get {
            indices.contains(index) ? self[index] : nil
        }

        set {
            guard indices.contains(index), let newValue = newValue else {
                print("Index out bound")
                return
            }
            self[index] = newValue
        }
    }
}
