//
//  SettingsType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

enum SettingsType: Int, CaseIterable {

    case myOrder, myReturn, shippingAddress, billingAddress, taxInvoiceAddress, myWishlist, logOut

    var title: String {
        switch self {
        case .myOrder: return "My Orders"
        case .myReturn: return "My Returns"
        case .shippingAddress: return "Shipping Address"
        case .billingAddress: return "Billing Address"
        case .taxInvoiceAddress: return "Tax Invoice Address"
        case .myWishlist: return "My Wishlist"
        case .logOut: return "Log Out"
        }
    }

    var imageString: String {
        let directory = "screen-profile/"
        switch self {
        case .myOrder: return "\(directory)icon-my-order"
        case .myReturn: return "\(directory)icon-my-return"
        case .shippingAddress: return "\(directory)icon-shipping-address"
        case .billingAddress: return "\(directory)icon-billing-address"
        case .taxInvoiceAddress: return "\(directory)icon-tax-invoice-address"
        case .myWishlist: return "\(directory)icon-my-wishlist"
        case .logOut: return "\(directory)icon-log-out"
        }
    }
}
