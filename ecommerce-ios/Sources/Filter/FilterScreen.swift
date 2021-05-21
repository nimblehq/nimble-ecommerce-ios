//
//  FilterScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct FilterScreen: View {

    @Environment(\.presentationMode) var presentationMode

    private let filterViewModels = FilterType.allCases

    var body: some View {
        ScrollView {
            VStack {
                titleText("Sort by")

                SortSelectionView()

                titleText("Filter by")

                ForEach(filterViewModels, id: \.self) { filterViewModel in
                    FilterCell(viewModel: filterViewModel.rawValue)
                }
            }
        }
        .navigationTitle("Filters")
        .navigationBarItems(
            leading: Button(action: { presentationMode.wrappedValue.dismiss() } ) { Text("Close") }
                .foregroundColor(.mainBlue),
            trailing: Button(action: { print("did tap reset button") } ) { Text("Reset") }
                .foregroundColor(.mainBlue)
        )
        .navigationBarTitleDisplayMode(.inline)
        .accentColor(.mainBlue)
    }

    private func titleText(_ title: String) -> some View {
        HStack {
            Text(title.capitalized)
                .foregroundColor(Color.charadeGray)
                .font(.system(size: 22.0, weight: .bold))
                .padding(.vertical, 8.0)
            Spacer()
        }
        .padding(.horizontal, 16.0)
    }
}

struct FilterScreen_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            FilterScreen()
        }
    }
}