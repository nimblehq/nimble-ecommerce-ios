//
//  LogoView.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 18/5/21.
//

import SwiftUI
import WidgetKit

struct LogoView: View {

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("icon")
                    .frame(width: 26.0, height: 26.0)
            }
            Spacer()
        }
        .padding(16.0)
    }
}

struct LogoView_Previews: PreviewProvider {

    static var previews: some View {
        LogoView()
        .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
