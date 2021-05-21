//
//  SmallWidgetView.swift
//  ecommerce-iosWidget
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
            Spacer(minLength: 8.5)
            VStack(alignment: .leading) {
                Text("POPULAR")
                    .font(.system(size: 12.0, weight: .medium))
                    .opacity(0.7)
                Text("Pink Cylinder")
                    .font(.system(size: 15.0, weight: .semibold))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
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
