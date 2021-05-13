//
//  ItemType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

enum ItemType: String, CaseIterable {

    case cube
    case sphere
    case shuzam
    case ico
    case taurus
    case cone

    var imageName: String {
        return "icon-\(rawValue)"
    }
}
