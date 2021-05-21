//
//  SearchScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

import SwiftUI

struct SearchScreen: View {

    @State private var searchKeyword: String = ""

    private let numberOfColumns = 2
    private let spacing: CGFloat = 17.0

    private let cellVỉewModels: [SearchItemCellViewModel] = {
        var vms: [SearchItemCellViewModel] = []
        for searchItem in SearchItem.searchItems {
            vms.append(
                SearchItemCellViewModel(
                    id: searchItem.id,
                    name: searchItem.name,
                    imageName: searchItem.imageString,
                    numberOfItems: searchItem.numberOfItems
                )
            )
        }
        return vms
    }()

    private var searchResultCellViewModels: [SearchItemCellViewModel] {
        searchKeyword.trimmed.isEmpty ? cellVỉewModels : cellVỉewModels.filter {
            $0.name.lowercased().contains(searchKeyword.lowercased())
        }
    }

    private var columns: [GridItem] {
        let numberOfColumns = CGFloat(self.numberOfColumns)
        let minimunWidth = ((screenWidth - spacing * (numberOfColumns + 1)) / numberOfColumns).rounded(.down)
        return [.init(.adaptive(minimum: minimunWidth))]
    }

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                SearchBarView(searchKeyword: $searchKeyword)
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(searchResultCellViewModels) { viewModel in
                        NavigationLink(destination: searchResultScreen(viewModel)) {
                            SearchItemCell(viewModel: viewModel)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Shop")
        }
    }

    private func searchResultScreen(_ viewModel: SearchItemCellViewModel) -> some View {
        SearchResultScreen(viewModel: .init(id: "\(viewModel.id)", name: viewModel.name))
    }
}

struct SearchScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchScreen()
    }
}
