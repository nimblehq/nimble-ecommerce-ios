//
//  ColorSelectionView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct ColorSelectionView: View {

    @State private var selectedViewModel: ColorCellViewModel?

    let cellViewModels: [ColorCellViewModel]

    private static let numberOfColumns = 2
    private static let spacing: CGFloat = 8.0
    private static let horizontalSpacing: CGFloat = 34.0

    private static let columns: [GridItem] = {
        Array(repeating: .init(.flexible()), count: 2)
    }()

    private var grayGoundRectangle: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .stroke(Color.blackAlpha12, lineWidth: 1.0)
    }

    private var blueRoundRectangle: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .stroke(Color.mainBlue, lineWidth: 1.0)
    }

    var body: some View {
        VStack {
            LazyVGrid(columns: Self.columns, spacing: Self.spacing) {
                ForEach(cellViewModels) { cellViewModel in
                    if selectedViewModel == cellViewModel {
                        ColorCell(viewModel: cellViewModel)
                            .frame(height: 74.0)
                            .background(blueRoundRectangle)
                            .onTapGesture {
                                selectedViewModel = cellViewModel
                            }
                    } else {
                        ColorCell(viewModel: cellViewModel)
                            .frame(height: 74.0)
                            .background(grayGoundRectangle)
                            .onTapGesture {
                                selectedViewModel = cellViewModel
                            }
                    }
                }
            }
        }
    }

    init(cellViewModels: [ColorCellViewModel]) {
        self.cellViewModels = cellViewModels
        selectedViewModel = cellViewModels.first
    }
}

struct ColorSelectionView_Previews: PreviewProvider {

    static var previews: some View {
        ColorSelectionView(cellViewModels: [
            ColorCellViewModel(id: "pink", name: "pink", colorCode: "E40046"),
            ColorCellViewModel(id: "indigo", name: "indigo", colorCode: "534ACC"),
            ColorCellViewModel(id: "honey", name: "honey", colorCode: "FF8200"),
            ColorCellViewModel(id: "gray", name: "gray", colorCode: "858999")
        ])
        .padding(.horizontal, 17.0)
    }
}
