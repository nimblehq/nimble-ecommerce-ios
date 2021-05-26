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
                    .font(.mediumDescription)
                    .foregroundColor(.charadeGray)

                Text(viewModel.subtitle)
                    .font(.mediumDescription)
                    .foregroundColor(.silverChaliceGray)

                Spacer()
            }
            .padding(.horizontal, 16.0)

            Spacer()

            Color.altoGray
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
