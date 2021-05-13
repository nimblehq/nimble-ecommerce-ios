//
//  SearchScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

import SwiftUI

struct SearchScreen: View {

    let cellVMs: [SearchItemCellViewModel] = {
        var vms: [SearchItemCellViewModel] = []
        for (index, itemType) in ItemType.allCases.enumerated() {
            vms.append(
                SearchItemCellViewModel(
                    id: index,
                    name: itemType.rawValue,
                    imageName: itemType.imageName,
                    numberOfItems: index
                )
            )
        }
        return vms
    }()

    var itemRowModels: [SearchItemRowViewModel] {
        var itemCellModels: [SearchItemRowViewModel] = []
        var index = 0
        while index < cellVMs.count {
            itemCellModels.append(
                SearchItemRowViewModel(
                    id: index,
                    viewModels: [
                        cellVMs[safe: index],
                        cellVMs[safe: index + 1],
                        cellVMs[safe: index + 2]
                    ]
                )
            )
            index += SearchItemRow.column
        }
        return itemCellModels
    }

    var body: some View {
        VStack {
            NavigationBarLeftTitle(
                contentView: Text("Shop").font(.title).fontWeight(.bold),
                trailingView: Rectangle().foregroundColor(.white)
            ).frame(width: screenWidth, height: navigationBarHeight)
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                ForEach(itemRowModels) { viewModel in
                    SearchItemRow(viewModel: viewModel)
                }
            }
        }
    }
}

struct SearchScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchScreen()
    }
}

