//
//  SmallWidgetView.swift
//  ecommerce-widgetExtension
//
//  Created by Bliss on 6/5/21.
//

import SwiftUI
import WidgetKit

struct SmallWidgetView: View {

    var body: some View {
        VStack {
            HStack {
                ItemView(imageName: "star.fill")
                    .frame(width: 62.0, height: 62.0)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct SmallWidgetView_Previews: PreviewProvider {

    static var previews: some View {
        SmallWidgetView()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
