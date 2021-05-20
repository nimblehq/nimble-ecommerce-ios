//
//  SettingType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

enum SettingType: Int, CaseIterable {

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
        switch self {
        case .myOrder: return "screen-profile/icon-my-order"
        case .myReturn: return "screen-profile/icon-my-return"
        case .shippingAddress: return "screen-profile/icon-shipping-address"
        case .billingAddress: return "screen-profile/icon-billing-address"
        case .taxInvoiceAddress: return "screen-profile/icon-tax-invoice-address"
        case .myWishlist: return "screen-profile/icon-my-wishlist"
        case .logOut: return "screen-profile/icon-log-out"
        }
    }
}
