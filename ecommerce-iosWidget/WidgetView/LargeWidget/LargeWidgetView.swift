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
            VStack(alignment: .leading, spacing: 0.0) {
                LargeWidgetTitleView()
                    .padding([.horizontal, .top], 16.0)
                    .padding(.bottom, 21.0)
                ItemsGridView(items: ["1", "2", "3", "4", "5", "6", "7"])
                    .frame(maxWidth: .infinity)
                    .padding([.horizontal, .bottom], 16.0)
                    .padding(.top, 25.0)
                    .background(Color.gray)
            }
            LogoView()
        }
    }
}

struct LargeWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        LargeWidgetView()
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
