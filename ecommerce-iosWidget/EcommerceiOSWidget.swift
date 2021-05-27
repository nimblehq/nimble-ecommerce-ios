//
//  EcommerceiOSWidget.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 17/5/21.
//

import WidgetKit
import SwiftUI

struct EcommerceiOSWidgetEntryView: View {

    var entry: ProductListProvider.Entry

    @Environment(\.widgetFamily) var family

    var body: some View {
        let itemViewModels = Array(entry.products.map(ItemViewModel.init).prefix(family.maxCount))
        switch family {
        case .systemSmall:
            SmallWidgetView(
                viewModel: ItemViewModel(product: entry.topItem),
                promotionText: entry.promotionText
            )
        case .systemLarge:
            LargeWidgetView(
                titleViewModel: LargeWidgetTitleViewModel(
                    product: entry.topItem,
                    promotionText: entry.promotionText
                ),
                itemViewModels: itemViewModels
            )
        default:
            Text(entry.date, style: .time)
        }
    }
}

@main
struct EcommerceiOSWidget: Widget {

    let kind: String = "EcommerceiOSWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ProductListProvider()) { entry in
            EcommerceiOSWidgetEntryView(entry: entry)
                .environment(\.colorScheme, .light)
                .background(Color.white)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct Ecommerce_iosWidget_Previews: PreviewProvider {

    static var previews: some View {
        EcommerceiOSWidgetEntryView(
            entry: ProductListEntry(
                date: Date(),
                topItem: .placeholderItem,
                promotionText: "POPULAR",
                products: SearchResultItem.placeholder
            )
        )
        .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
