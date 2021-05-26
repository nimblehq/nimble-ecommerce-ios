//
//  SmallWidgetView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 6/5/21.
//

import SwiftUI
import WidgetKit

struct SmallWidgetView: View {

    var viewModel: ItemViewModel
    var promotionText: String

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    ItemView(item: viewModel)
                        .frame(width: 62.0, height: 62.0)
                    Spacer()
                }
                Spacer(minLength: 8.5)
                VStack(alignment: .leading) {
                    Text(promotionText)
                        .font(.system(size: 12.0, weight: .medium))
                        .opacity(0.7)
                    Text(viewModel.name)
                        .font(.system(size: 15.0, weight: .semibold))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding()

            LogoView()
        }
    }
}

struct SmallWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        SmallWidgetView(
            viewModel: .itemPlaceholder,
            promotionText: "POPULAR"
        )
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
