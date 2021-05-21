//
//  NoItemView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct NoItemView: View {

    let viewModel: NoItemViewModel
    var body: some View {
        VStack(spacing: 17.0) {
            Image(viewModel.imageString)
                .resizable()
                .aspectRatio(1.117, contentMode: .fit)
                .frame(maxWidth: 100.0)
            Text(viewModel.description)
                .foregroundColor(.charadeGrayAlpha4)
                .multilineTextAlignment(.center)
        }
    }
}

struct NoItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        NoItemView(viewModel: .init(name: "shopping cart", imageString: "common-icon/icon-cart"))
            .frame(width: 200.0, height: 400.0)
    }
}
