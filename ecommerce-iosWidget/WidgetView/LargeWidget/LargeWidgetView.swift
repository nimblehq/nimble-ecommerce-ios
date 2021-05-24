//
//  LargeWidgetView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import SwiftUI
import WidgetKit

struct LargeWidgetView: View {

    let titleViewModel: LargeWidgetTitleViewModel
    let itemViewModels: [ItemViewModel]

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0.0) {
                LargeWidgetTitleView(viewModel: titleViewModel)
                    .padding([.horizontal, .top], 16.0)
                    .padding(.bottom, 21.0)
                ItemsGridView(items: itemViewModels)
                    .frame(maxWidth: .infinity)
                    .padding([.horizontal, .bottom], 16.0)
                    .padding(.top, 25.0)
                    .background(Color.blackSqueeze)
            }
            LogoView()
        }
    }
}

struct LargeWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetView(
            titleViewModel: LargeWidgetTitleViewModel(
                product: .placeholderItem,
                promotionText: "POPULAR"
            ),
            itemViewModels: ItemViewModel.placeholder
        )
        .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
