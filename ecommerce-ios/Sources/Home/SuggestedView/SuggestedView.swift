//
//  SuggestedView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 14/05/2021.
//

import SwiftUI

struct SuggestedView: View {

    private let product = Product(
        id: "product1",
        name: "Poly Cube 2021",
        imageName: "",
        price: Price(id: "price1", amount: 8_000, currency: "THB"))

    var body: some View {
        ZStack {
            Color.darkBlue
                .ignoresSafeArea(edges: .top)
                .frame(height: 386.0)

            Image("product-cube")
                .offset(x: 45.0, y: 45.0)

            VStack(alignment: .leading) {
                Text("SUGGESTED FOR YOU")
                    .padding([.top, .leading], 15.0)
                    .foregroundColor(.gray)
                Text("\(product.name) Collection")
                    .multilineTextAlignment(.leading)
                    .padding(.top, 4.0)
                    .padding(.leading, 15.0)
                    .foregroundColor(.white)
                    .font(.largeTitle.bold())

                Spacer()
                    .foregroundColor(.white)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                    .padding([.leading, .trailing], 15.0)

                HStack {
                    VStack(alignment: .leading) {
                        Text("\(product.name)")
                            .foregroundColor(.white)
                            .padding(.leading, 15.0)
                        Text("From ฿\(product.price.amount)")
                            .padding([.bottom, .leading], 15.0)
                            .foregroundColor(.white)
                    }

                    Spacer()
                    Button("SHOP") {
                        print("Did tap shop button")
                    }
                    .frame(width: 74.0, height: 30.0)
                    .foregroundColor(.white)
                    .background(Color.purpleBlue)
                    .cornerRadius(17.0)
                }
                .padding(.trailing, 15.0)
            }
            .alignmentGuide(.leading) { d in d[.trailing] }
        }
    }
}

struct SuggestedView_Previews: PreviewProvider {

    static var previews: some View {
        SuggestedView()
            .frame(width: UIScreen.main.bounds.width, height: 386.0)
    }
}
