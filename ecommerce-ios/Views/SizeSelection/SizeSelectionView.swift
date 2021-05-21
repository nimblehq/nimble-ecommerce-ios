//
//  SizeSelectionView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct SizeSelectionView: View {

    @State private var selectedViewModel: SizeCellViewModel?

    let cellViewModels: [SizeCellViewModel]

    private let spacing: CGFloat = 8.0
    private let horizontalSpacing: CGFloat = 34.0

    private var columns: [GridItem] {
        .init(repeating: GridItem(.flexible()), count: self.cellViewModels.count)
    }

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
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(cellViewModels) { cellViewModel in
                    ZStack {
                        if selectedViewModel == cellViewModel {
                            SizeCell(viewModel: cellViewModel)
                                .frame(height: 50.0)
                                .background(blueRoundRectangle)
                                .onTapGesture {
                                    selectedViewModel = cellViewModel
                                }
                        } else {
                            SizeCell(viewModel: cellViewModel)
                                .frame(height: 50.0)
                                .background(grayGoundRectangle)
                                .onTapGesture {
                                    selectedViewModel = cellViewModel
                                }
                        }
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .padding(.horizontal, 16.0)
    }

    init(cellViewModels: [SizeCellViewModel]) {
        self.cellViewModels = cellViewModels
        selectedViewModel = cellViewModels.first
    }
}

struct SizeSelectionView_Previews: PreviewProvider {

    static var previews: some View {
        SizeSelectionView(cellViewModels: ProductSizeType.allCases.map(SizeCellViewModel.init))
            .frame(width: .infinity, height: 100.0)
    }
}
