//
//  Font+Application.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 26/05/2021.
//

import SwiftUI

extension Font {

    static let largeNavigationBarTitle: Font = { Font.system(size: 34, weight: .bold) }()

    static let headlineTitle: Font = { Font.system(size: 22, weight: .bold) }()

    static let headlineDescription: Font = { Font.system(size: 15, weight: .regular) }()

    static let smallTitle: Font = { Font.system(size: 17, weight: .bold) }()

    static let smallDescription: Font = { Font.system(size: 13, weight: .regular) }()

    static let mediumDescription: Font = { Font.system(size: 17, weight: .regular) }()
}
