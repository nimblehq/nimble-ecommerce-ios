//
//  LargeWidgetView.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 14/5/21.
//

import SwiftUI
import WidgetKit

struct LargeWidgetView: View {

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Rectangle()
                    // TODO: Change gray color when rebase
                    .fill(Color.gray)
                    .frame(maxWidth: .infinity, maxHeight: 182.0)
            }
            VStack {
                // TODO: large widget top part, replace below line
                Spacer(minLength: 147.0)
                // end replace

                Spacer(minLength: 25.0)
                ItemsGridView(items: ["1", "2", "3", "4", "5", "6", "7"])
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding()
        }
    }
}

struct LargeWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetView()
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
