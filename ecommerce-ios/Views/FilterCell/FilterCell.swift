//
//  FilterCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct FilterCell: View {

    let viewModel: String

    var body: some View {
        VStack {
            Spacer()

            HStack(spacing: 14.0) {
                Text(viewModel.capitalized)
                    .font(.system(size: 17.0, weight: .regular))
                    .foregroundColor(.charadeGray)

                Spacer()

                Image("common-icon/icon-disclosure")
                    .scaledToFill()
                    .frame(width: 8.0, height: 13.0)
            }
            .padding(.horizontal, 16.0)

            Spacer()

            Color.blackAlpha2
                .frame(height: 1.0)
                .padding(.leading, 16.0)
        }
    }
}

struct FilterCell_Previews: PreviewProvider {

    static var previews: some View {
        FilterCell(viewModel: "Category")
            .frame(width: .infinity, height: 100.0)
    }
}
