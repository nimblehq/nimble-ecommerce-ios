//
//  LargeWidgetView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import SwiftUI
import WidgetKit

struct LargeWidgetView: View {

    @Environment(\.widgetFamily) var family

    let titleViewModel: LargeWidgetTitleViewModel
    let itemViewModels: [ItemViewModel]

    var body: some View {
        let padding = padding(family)
        ZStack {
            VStack(alignment: .leading, spacing: 0.0) {
                LargeWidgetTitleView(viewModel: titleViewModel)
                    .padding([.horizontal, .top], padding.left)
                    .padding(.bottom, padding.bottom)
                ItemsGridView(items: itemViewModels)
                    .frame(maxWidth: .infinity)
                    .padding([.horizontal, .bottom], padding.left)
                    .padding(.top, padding.top)
                    .background(Color.blackSqueeze)
            }
            LogoView()
        }
    }

    private func padding(_ family: WidgetFamily) -> UIEdgeInsets {
        switch family {
        case .systemLarge:
            return UIEdgeInsets(top: 25.0, left: 16.0, bottom: 21.0, right: 16.0)
        default:
            return UIEdgeInsets(top: 6.0, left: 16.0, bottom: 6.0, right: 16.0)
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

struct MediumWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetView(
            titleViewModel: LargeWidgetTitleViewModel(
                product: .placeholderItem,
                promotionText: nil
            ),
            itemViewModels: Array(ItemViewModel.placeholder.prefix(4))
        )
        .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
