//
//  Color+Application.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

extension Color {

    // MARK: - Gray

    // #292A33 Gray 900
    static var charadeGray: Color { Color(hex: 0x292A33) }
    static var charadeGrayAlpha4: Color { Color(hex: 0x292A33, alpha: 0.4) }

    // #DADADA
    static var altoGray: Color { Color(hex: 0xDADADA) }

    // MARK - Violet
    static var indigoViolet: Color { Color(hex: 0x534ACC) }

    // MARK: - Initialize

    init(hex: Int, alpha: Double = 1.0) {
        self.init(UIColor(hex: hex, alpha: alpha).cgColor)
    }
}
