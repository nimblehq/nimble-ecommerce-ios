//
//  ItemDescriptionView.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 18/5/21.
//

import SwiftUI
import WidgetKit

struct ItemDescriptionView: View {

    let name: String
    let price: String
    let promotion: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            if let promotion = promotion {
                Text(promotion)
                    .font(.system(size: 10.0, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(.bottom, 4.0)
            }
            Text(name)
                .font(.system(size: 16.0, weight: .semibold))
            Text(price)
                .font(.system(size: 12.0, weight: .medium))
        }
    }
}

struct ItemDescriptionView_Previews: PreviewProvider {

    static var previews: some View {
        ItemDescriptionView(
            name: "Name",
            price: "Price",
            promotion: "Promotion"
        )
        .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
