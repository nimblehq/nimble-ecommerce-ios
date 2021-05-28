//
//  ProductInformationView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct ProductInformationView: View {

    let viewModel: ProductInformationViewModel

    var body: some View {
        VStack {
            Image(viewModel.imageString)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 16.0)

            VStack(spacing: 4.0) {
                Text(viewModel.productName.capitalized)
                    .font(.system(size: 28.0, weight: .bold))
                    .foregroundColor(.charadeGray)
                Text("\(viewModel.price.currency)\(viewModel.price.amount)")
                    .font(.mediumDescription)
                    .foregroundColor(.charadeGray)
            }
            .padding(.vertical, 16.0)

            Button(
                action: { print("did tap add to cart button") },
                label: {
                    Text("Add to cart")
                        .font(.smallTitle)
                        .foregroundColor(.white)
                }
            )
            .frame(maxWidth: .infinity, minHeight: 50.0)
            .padding(.horizontal, 16.0)
            .background(Color.indigoViolet)
            .cornerRadius(10.0)

            Color.altoGray
                .frame(height: 1.0)
                .padding(.vertical, 20.0)

            VStack(alignment: .leading, spacing: 8.0) {
                Text("About")
                    .font(.headlineTitle)
                    .foregroundColor(.charadeGray)
                Text(viewModel.descrition)
                    .font(.mediumDescription)
                    .foregroundColor(.silverChaliceGray)
            }
        }
        .padding(.horizontal, 16.0)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailingView: {
            HStack(spacing: 10.0) {
                Button(action: { print("did tap favorite button") }) {
                    Image("common-icon/icon-favorite-light")
                        .frame(width: 44.0, height: 44.0)
                }

                Button(action: { print("did tap share button") }) {
                    Image("common-icon/icon-share")
                        .frame(width: 44.0, height: 44.0)
                }
            }
        })
    }
}

struct ProductInformation_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            ProductInformationView(viewModel: ProductInformationViewModel.productInformation)
        }
    }
}
