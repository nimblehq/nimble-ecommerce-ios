//
//  CustomNavigationBarContentView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

struct CustomNavigationBarContentView<LeadingView, ContentView, TrailingView>: View
where LeadingView: View, ContentView: View, TrailingView: View {

    let leadingView: LeadingView?
    let contentView: ContentView?
    let trailingView: TrailingView?

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            leadingView.padding()
            Spacer()
            contentView.layoutPriority(1).padding()
            Spacer()
            trailingView.padding()
        }
    }
}

struct CustomNavigationBarContentView_Previews: PreviewProvider {

    static var previews: some View {
        CustomNavigationBarContentView(
            leadingView: Button("Back", action: { }).font(.footnote),
            contentView: Text("Some title").font(.title),
            trailingView: Button("Cancel", action: { }).font(.footnote)
        )
        .frame(width: screenWidth, height: 100.0)
    }
}
