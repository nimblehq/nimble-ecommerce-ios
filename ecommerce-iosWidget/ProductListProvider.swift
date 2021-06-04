//
//  ProductListProvider.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 21/5/21.
//

import WidgetKit

struct ProductListProvider: TimelineProvider {

    func placeholder(in context: Context) -> ProductListEntry {
        ProductListEntry(
            date: Date(),
            topItem: .placeholderItem,
            promotionText: "POPULAR",
            products: WidgetProduct.placeholder
        )
    }

    func getSnapshot(in context: Context, completion: @escaping (ProductListEntry) -> Void) {
        let entry = ProductListEntry(
            date: Date(),
            topItem: .placeholderItem,
            promotionText: "POPULAR",
            products: WidgetProduct.placeholder
        )
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<ProductListEntry>) -> Void) {
        let entry = ProductListEntry(
            date: Date(),
            topItem: WidgetProduct.placeholder.randomElement() ?? .placeholderItem,
            promotionText: "POPULAR",
            products: WidgetProduct.placeholder
        )
        let entries: [ProductListEntry] = [entry]
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
