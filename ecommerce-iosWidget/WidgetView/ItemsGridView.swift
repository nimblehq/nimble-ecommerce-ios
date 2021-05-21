//
//  ItemsGridView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import WidgetKit
import SwiftUI

struct ItemsGridView: View {

    var items: [String]

    let columns = Array(repeating: GridItem(.flexible()), count: 4)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 15.0) {
            ForEach(items, id: \.self) { _ in
                ItemView(imageName: "star.fill")
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
    }
}

struct ItemsGridView_Previews: PreviewProvider {

    static var previews: some View {
        ItemsGridView(items: ["1", "2", "3", "4", "5", "6", "7"])
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
