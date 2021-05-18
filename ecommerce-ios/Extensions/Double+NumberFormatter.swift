//
//  Double+NumberFormatter.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import Foundation

extension Double {

    func formatted(with formatter: NumberFormatter) -> String {
        guard let formattedString = formatter.string(from: NSNumber(value: self)) else { return "" }
        #warning("reuse the trimmed variable of extension String")
        return formattedString.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
