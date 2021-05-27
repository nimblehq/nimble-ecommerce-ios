//
//  ItemsGridView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import WidgetKit
import SwiftUI

struct ItemsGridView: View {

    @Environment(\.widgetFamily) var family

    var items: [ItemViewModel]

    let columns = Array(repeating: GridItem(.flexible()), count: 4)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 15.0) {
            ForEach(items) { item in
                ItemView(item: item)
                    .aspectRatio(1.0, contentMode: .fit)
            }
            ForEach(0..<spacingItems(currentItems: items.count)) { _ in
                Spacer()                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
    }

    private func spacingItems(currentItems: Int) -> Int {
        return max(family.maxCount - currentItems, 0)
    }
}

struct ItemsGridView_Previews: PreviewProvider {

    static var previews: some View {
        ItemsGridView(items: Array(ItemViewModel.placeholder.prefix(3)))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
