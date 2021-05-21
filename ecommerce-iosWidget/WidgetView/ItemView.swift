//
//  ItemView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 6/5/21.
//

import WidgetKit
import SwiftUI

struct ItemViewModel: Identifiable {

    var id: Int
    var name: String
    var imageString: String

    init(product: WidgetProduct) {
        id = product.id
        name = product.name
        imageString = product.imageString
    }

    init(id: Int, name: String, imageString: String) {
        self.id = id
        self.name = name
        self.imageString = imageString
    }

    static var placeholder: [ItemViewModel] {
        WidgetProduct.placeholder.map( ItemViewModel.init)
    }
    static var itemPlaceholder: ItemViewModel {
        ItemViewModel(
            product: .placeholderItem
        )
    }
}

struct ItemView: View {

    var item: ItemViewModel

    var body: some View {
        Image(item.imageString)
            .resizable()
            .background(Color(UIColor.systemBackground))
            .cornerRadius(8.0)
            .shadow(
                color: Color(UIColor.label).opacity(0.12),
                radius: 20.0,
                x: CGFloat(0.0),
                y: CGFloat(4.0)
            )
    }
}

struct ItemView_Previews: PreviewProvider {

    static var previews: some View {
        ItemView(item: .itemPlaceholder)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
            .frame(width: 60, height: 60, alignment: .topLeading)
    }
}
