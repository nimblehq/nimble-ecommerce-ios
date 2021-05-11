//
//  Color+Application.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 11/05/2021.
//

import SwiftUI

extension Color {

    /// 0x534ACC
    static let mainBlue: Color = .init(hex: 0x534ACC)
}

extension Color {

    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
