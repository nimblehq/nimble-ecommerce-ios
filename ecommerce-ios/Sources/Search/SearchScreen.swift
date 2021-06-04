//
//  SearchScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

import SwiftUI

struct SearchScreen: View {

    @State private var searchKeyword: String = ""
    @State private var deeplinkedId: Int?

    private let numberOfColumns = 2
    private let spacing: CGFloat = 17.0

    private let cellViewModels: [SearchItemCellViewModel] = {
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
        searchKeyword.trimmed.isEmpty ? cellViewModels : cellViewModels.filter {
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
                        NavigationLink(
                            destination: searchResultScreen(),
                            tag: viewModel.id,
                            selection: $deeplinkedId) {
                            SearchItemCell(viewModel: viewModel)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Shop")
        }
        .onOpenURL { url in
            deeplinkedId = DeeplinkUtility.idFromURL(url)
        }
    }

    private func searchResultScreen() -> some View {
        guard let deeplinkedId = deeplinkedId,
              let productInformationViewModel = ProductInformationViewModel(id: deeplinkedId)
        else { return ProductInformationView(viewModel: .productInformation) }
        return ProductInformationView(viewModel: productInformationViewModel)
    }
}

struct SearchScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchScreen()
    }
}
