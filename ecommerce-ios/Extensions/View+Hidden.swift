//
//  View+Hidden.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 06/05/2021.
//

import SwiftUI

extension View {

    @ViewBuilder func hidden(_ shouldHide: Bool) -> some View {
        switch shouldHide {
        case true: self.hidden()
        case false: self
        }
    }
}
