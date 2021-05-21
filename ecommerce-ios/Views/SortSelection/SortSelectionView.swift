//
//  SortSelectionView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct SortSelectionView: View {

    @State private var selectedViewModel: SortCellViewModel?

    private let cellViewModels: [SortCellViewModel] = {
        SortType.allCases.map(SortCellViewModel.init)
    }()
    
    var body: some View {
        VStack(spacing: 0.0) {
            ForEach(cellViewModels) { cellViewModel in
                ZStack(alignment: .trailing) {
                    RadioButtonView(viewModel: selectedViewModel == cellViewModel)
                        .padding(.horizontal, 16.0)

                    SortCell(viewModel: cellViewModel)
                        .frame(height: 44.0)
                        .onTapGesture {
                            selectedViewModel = cellViewModel
                        }
                }
            }
        }
    }
}

struct SortSelectionView_Previews: PreviewProvider {

    static var previews: some View {
        SortSelectionView()
    }
}
