//
//  LargeWidgetTitleView.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 18/5/21.
//

import SwiftUI
import WidgetKit

struct LargeWidgetTitleViewModel: Identifiable {

    var id: Int
    var name: String
    var imageString: String
    var price: Double
    var currency: String
    var promotionText: String

    init(product: WidgetProduct, promotionText: String) {
        id = product.id
        name = product.name.capitalized
        imageString = product.imageString
        price = Double(product.price.amount)
        currency = product.price.currency
        self.promotionText = promotionText
    }

    var formattedPrice: String {
        "\(currency)\(price.formatted(with: .currencyWithNoDecimalDigit))"
    }
}

struct LargeWidgetTitleView: View {

    let viewModel: LargeWidgetTitleViewModel

    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 16.0) {
            ItemView(
                item: ItemViewModel(
                    id: viewModel.id,
                    name: viewModel.name,
                    imageString: viewModel.imageString
                )
            )
            .aspectRatio(1.0, contentMode: .fit)
            ItemDescritionView(
                name: viewModel.name,
                price: viewModel.formattedPrice,
                promotion: viewModel.promotionText
            )
        }
    }
}

struct LargeWidgetTitleView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetTitleView(viewModel: LargeWidgetTitleViewModel(product: .placeholderItem, promotionText: "POPULAR"))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
