//
//  ColorCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct ColorCell: View {

    let viewModel: ColorCellViewModel

    var body: some View {
        Color.clear
            .overlay {
                VStack(spacing: 8.0) {
                    Circle()
                        .foregroundColor(Color(hexString: viewModel.colorCode))
                        .frame(width: 24.0, height: 24.0)
                    Text(viewModel.name.capitalized)
                        .foregroundColor(.charadeGray)
                        .font(.system(size: 13.0))
                }
            }
    }
}

struct ColorCell_Previews: PreviewProvider {

    static var previews: some View {
        ColorCell(viewModel: .init(id: "pink", name: "pink", colorCode: "E40046"))
            .frame(width: 100.0, height: 80.0)
    }
}
