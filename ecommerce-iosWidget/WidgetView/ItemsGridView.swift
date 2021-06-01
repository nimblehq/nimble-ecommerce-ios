//
//  ItemsGridView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import WidgetKit
import SwiftUI

struct ItemsGridView: View {

    var items: [ItemViewModel]

    let columns = Array(repeating: GridItem(.flexible()), count: 4)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 15.0) {
            ForEach(items) { item in
                Link(destination: item.productURL) {
                    ItemView(item: item)
                        .aspectRatio(1.0, contentMode: .fit)
                }
            }
        }
    }
}

struct ItemsGridView_Previews: PreviewProvider {

    static var previews: some View {
        ItemsGridView(items: ItemViewModel.placeholder)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
