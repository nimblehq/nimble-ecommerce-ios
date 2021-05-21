//
//  SettingsSectionType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

enum SettingsSectionType: Int, CaseIterable {

    case myOrder, myAddress

    var title: String {
        switch self {
        case .myOrder: return "My Order"
        case .myAddress: return "My Addresses"
        }
    }

    var settingTypes: [SettingsType] {
        switch self {
        case .myOrder: return [.myOrder, .myReturn]
        case .myAddress: return [.shippingAddress, .billingAddress, .taxInvoiceAddress, .myWishlist, .logOut]
        }
    }
}
