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
        VStack {
            titleText("Sort by")

            SortSelectionView()

            titleText("Filter by")

            ForEach(filterViewModels, id: \.self) { filterViewModel in
                FilterCell(viewModel: filterViewModel.rawValue)
                    .frame(height: 44.0)
            }

            Spacer()

            Button(
                action: { print("did tap view results button") },
                label: {
                    Text("View results")
                        .font(.smallTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 50.0)
                        .background(Color.indigoViolet)
                        .cornerRadius(10.0)
                }
            )
            .padding(.horizontal, 16.0)
        }
        .navigationTitle("Filters")
        .navigationBarItems(
            leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
            }
            .foregroundColor(.indigoViolet),
            trailing: Button(action: {
                print("did tap reset button")
            }) {
                Text("Reset")
            }
            .foregroundColor(.indigoViolet)
        )
        .navigationBarTitleDisplayMode(.inline)
    }

    private func titleText(_ title: String) -> some View {
        HStack {
            Text(title.capitalized)
                .foregroundColor(Color.charadeGray)
                .font(.headlineTitle)
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
