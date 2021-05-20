//
//  SizeCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct SizeCell: View {

    let viewModel: SizeCellViewModel

    var body: some View {
        Color.clear
            .overlay(text)
    }

    private var text: some View {
        Text(viewModel.name)
            .textCase(.uppercase)
    }

    init(viewModel: SizeCellViewModel) {
        self.viewModel = viewModel
    }
}

struct SizeCell_Preview: PreviewProvider {

    static var previews: some View {
        SizeCell(viewModel: .init(id: "s", name: "s"))
            .frame(width: 100.0, height: 100.0)
    }
}
