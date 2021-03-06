//
//  SuggestedView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 14/05/2021.
//

import SwiftUI

struct SuggestedView: View {

    let product: Product
    var shopAction: (() -> Void)?

    var body: some View {
        ZStack {
            backgroundView
            contentView
        }
        .onTapGesture {
            shopAction?()
        }
        .clipped()
    }

    private var backgroundView: some View {
        ZStack {
            Color.darkBlue
                .ignoresSafeArea(edges: .top)
                .frame(height: 386.0)

            Image("dummy-tshirt/product-cube")
                .offset(x: 45.0, y: 45.0)
        }
    }

    private var contentView: some View {
        VStack(alignment: .leading) {
            headerView

            Spacer()
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.white.opacity(0.2))

            footerView
        }
        .padding(15.0)
    }

    private var headerView: some View {
        VStack(alignment: .leading) {
            Text("SUGGESTED FOR YOU")
                .foregroundColor(.gray)
                .font(.system(size: 13, weight: .bold))
            Text("\(product.name) Collection")
                .multilineTextAlignment(.leading)
                .padding(.top, 4.0)
                .foregroundColor(.white)
                .font(.system(size: 34, weight: .bold))
        }
    }

    private var footerView: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(product.name)")
                    .foregroundColor(.white)
                    .font(.smallTitle)
                Text("From \(product.formattedPrice)")
                    .foregroundColor(.white)
                    .font(.smallDescription)
            }

            Spacer()
            Button("SHOP") {
                shopAction?()
            }
            .font(.system(size: 15).bold())
            .frame(width: 74.0, height: 30.0)
            .foregroundColor(.white)
            .background(Color.indigoViolet)
            .cornerRadius(17.0)
        }
        .padding(.top, 10.0)
    }
}

struct SuggestedView_Previews: PreviewProvider {

    static var previews: some View {
        SuggestedView(product: Product.suggestedProduct)
            .frame(width: UIScreen.main.bounds.width, height: 386.0)
    }
}
