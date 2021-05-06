//
//  ItemView.swift
//  ecommerce-widgetExtension
//
//  Created by Bliss on 6/5/21.
//

import WidgetKit
import SwiftUI

struct ItemView: View {

    var imageName: String

    var body: some View {
        Image(systemName: imageName)
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
        ItemView(imageName: "star.fill")
            .previewContext(WidgetPreviewContext(family: .systemSmall))
            .frame(width: 60, height: 60, alignment: .topLeading)
    }
}
