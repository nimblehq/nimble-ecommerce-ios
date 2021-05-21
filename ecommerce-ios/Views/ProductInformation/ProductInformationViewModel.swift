//
//  ProductInformationViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

struct ProductInformationViewModel: Identifiable {

    let id: String
    let productName: String
    let productCategory: String
    let imageString: String
    let price: Price
    let descrition: String
}

extension ProductInformationViewModel {

    static var productInformation: ProductInformationViewModel {
        .init(
            id: "id",
            productName: "pink cube",
            productCategory: "cube",
            imageString: "dummy-tshirt/tshirt",
            price: Price(id: "price", amount: 10_000, currency: "฿"),
            descrition: """
            The design of Pink Cube was inspired by amazing box. Owning this piece grants the following stats:

            Charisma +10
            Luck +10
            Happiness +15
            """
        )
    }
}
