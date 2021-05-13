//
//  Color+Application.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

extension Color {

    // MARK: - Blue

    /// 0x534ACC
    static let mainBlue: Color = .init(hex: 0x534ACC)

    /// 0x201547
    static let darkBlue: Color = .init(hex: 0x201547)
    /// 0x534ACC
    static let purpleBlue: Color = .init(hex: 0x534ACC)

    // MARK: - Gray

    /// #292A33 Gray 900
    static var charadeGray: Color { Color(hex: 0x292A33) }

    /// #292A33 Gray 900 with alpha 0.4
    static var charadeGrayAlpha4: Color { Color(hex: 0x292A33, alpha: 0.4) }

    /// #DADADA
    static var altoGray: Color { Color(hex: 0xDADADA) }

    /// #EFEFEF
    static var galleryGray: Color { Color(hex: 0xEFEFEF) }

    // MARK - Violet

    /// #534ACC
    static var indigoViolet: Color { Color(hex: 0x534ACC) }

    // MARK: - Initialize

    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
