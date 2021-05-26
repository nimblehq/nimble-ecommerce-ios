//
//  HomeScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct HomeScreen: View {

    private var tab: Constants.TabBar = .home
    private var viewModel = HomeViewModel()

    @State private var collectionName: String = ""
    @State private var gotoSuggestedCollection: Bool = false
    @State private var gotoCollection: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(
                        destination: CollectionScreen(viewModel: viewModel.collectionViewModel),
                        isActive: $gotoSuggestedCollection
                    ) {
                        EmptyView()
                    }
                    NavigationLink(
                        destination: CollectionScreen(viewModel: viewModel.collectionViewModel(for: collectionName)),
                        isActive: $gotoCollection
                    ) {
                        EmptyView()
                    }

                    SuggestedView(product: viewModel.suggestedProduct) {
                        gotoSuggestedCollection = true
                    }
                    .cornerRadius(12.0)
                    .offset(x: 0.0, y: 20.0)
                    .padding([.horizontal], 10.0)

                    CategoryCollectionView(categories: Category.categories) { category in
                        collectionName = category.name
                        gotoCollection = true
                    }

                    ProductCollectionView(viewModel: .init()) {
                        collectionName = $0
                        gotoCollection = true
                    }
                }
            }
            .navigationBarTitle(tab.title)

            #warning("When implementing #64, when push to another screen, it's still shown")
//            .navigationBarLargeTitle {
//                CustomNavigationBarLargeTitleView(
//                    titleView: {
//                        Text(tab.title)
//                            .font(.largeNavigationBarTitle)
//                            .foregroundColor(.charadeGray)
//                    },
//                    trailingView: {
//                        Button(
//                            action: { print("did tap profile button") },
//                            label: { Image("dummy-other/avatar-icon") }
//                        )
//                    }
//                )
//            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {

    static var previews: some View {
        HomeScreen()
    }
}
