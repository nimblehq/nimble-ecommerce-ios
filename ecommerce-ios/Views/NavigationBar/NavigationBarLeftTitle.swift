//
//  NavigationBarLeftTitle.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

struct NavigationBarLeftTitle<ContentView, TrailingView>: View
where ContentView: View, TrailingView: View {

    let contentView: ContentView?
    let trailingView: TrailingView?

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            contentView.layoutPriority(1).padding()
            Spacer()
            trailingView.padding()
        }
    }
}

struct NavigationBarLeftTitle_Previews: PreviewProvider {

    static var previews: some View {
        NavigationBarLeftTitle(
            contentView: Text("Some title").font(.title),
            trailingView: Button("OK", action: { }).font(.footnote)
        ).frame(width: screenWidth, height: 100)
    }
}

