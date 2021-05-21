//
//  ContentView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 05/05/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ColorSelectionView(cellViewModels: [
            ColorCellViewModel(id: "pink", name: "pink", colorCode: "E40046"),
            ColorCellViewModel(id: "indigo", name: "indigo", colorCode: "534ACC"),
            ColorCellViewModel(id: "honey", name: "honey", colorCode: "FF8200"),
            ColorCellViewModel(id: "gray", name: "gray", colorCode: "858999")
        ])
        .padding(.horizontal, 17.0)
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }
}
