//
//  View+CustomOverlayView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

public extension View {

    func overlay<Content>(@ViewBuilder customView: () -> Content) -> some View where Content: View {
        overlay(customView())
    }
}
