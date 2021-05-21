//
//  SortCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct SortCell: View {

    let viewModel: SortCellViewModel
    
    var body: some View {
        VStack {
            Spacer()

            HStack(spacing: 13.0) {
                Text(viewModel.title)
                    .foregroundColor(Color.charadeGray)
                    .font(.system(size: 17.0, weight: .regular))

                Text(viewModel.subtitle)
                    .foregroundColor(Color.blackAlpha2)
                    .font(.system(size: 17.0, weight: .regular))

                Spacer()
            }
            .padding(.horizontal, 16.0)

            Spacer()

            Color.blackAlpha2
                .frame(height: 1.0)
                .padding(.leading, 16.0)
        }
        .contentShape(Rectangle())
    }
}

struct SortCell_Previews: PreviewProvider {

    static var previews: some View {
        SortCell(viewModel: .init(sortType: .priceHighToLow))
            .frame(width: .infinity, height: 100.0)
    }
}
