//
//  NumberFormatters.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import Foundation

extension NumberFormatter {

    /// Sets 1000.01 as 1,000
    static var currencyWithNoDecimalDigit: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        formatter.currencyCode = ""
        formatter.maximumFractionDigits = 0
        return formatter
    }
}
