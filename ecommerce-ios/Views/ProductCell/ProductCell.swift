//
//  ProductCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

struct ProductCell: View {

    var viewModel: ProductCellViewModel

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(viewModel.imageName)
                Text(viewModel.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.charadeGray)
                Text(viewModel.formattedPrice)
                    .font(.footnote)
                    .foregroundColor(.charadeGray)
            }
            Rectangle()
                .fill(Color.clear)
                .frame(width: 44.0, height: 44.0)
                .overlay {
                    Button(
                        action: {
                            print("did tap heart button of item \(viewModel.name)")
                        },
                        label: {
                            Image("icon-heart")
                        }
                    )
                }
        }
        .onTapGesture {
            print("did tap product cell \(viewModel.name)")
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(
            viewModel: ProductCellViewModel(
                id: "cube-pink",
                name: "Pink cube",
                imageName: "tshirt-cube-pink",
                price: 10_000,
                currency: "฿"
            )
        )
    }
}

public extension View {

    func overlay<Content>(@ViewBuilder customView: () -> Content) -> some View where Content: View {
        overlay(customView())
    }
}
