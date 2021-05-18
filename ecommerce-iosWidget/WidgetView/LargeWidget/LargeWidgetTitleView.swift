//
//  LargeWidgetTitleView.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 18/5/21.
//

import SwiftUI
import WidgetKit

struct LargeWidgetTitleView: View {

    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 16.0) {
            ItemView(imageName: "star.fill")
                .aspectRatio(1.0, contentMode: .fit)
            ItemDescritionView(
                name: "Pink Cylinder",
                price: "฿8,000",
                promotion: "POPULAR"
            )
        }
    }
}

struct LargeWidgetTitleView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetTitleView()
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
