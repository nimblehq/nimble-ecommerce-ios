//
//  ProfileScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct ProfileScreen: View {

    private let sectionViewModels: [SettingsSectionViewModel] = {
        SettingsSectionType.allCases.map(SettingsSectionViewModel.init)
    }()

    private let columns = [GridItem(.flexible())]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 0.0) {
                    ProfileAboutView(
                        viewModel: .init(
                            fullName: "Joseph Edmed",
                            email: "josephed@mail.com",
                            imageString: "dummy-other/avatar-large-icon"
                        )
                    )
                    ForEach(sectionViewModels) { sectionViewModel in
                        Section(header: SettingSectionHeader(viewModel: sectionViewModel.title)) {
                            ForEach(sectionViewModel.cellViewModels) { cellViewModel in
                                SettingsCell(viewModel: cellViewModel)
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Account")
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {

    static var previews: some View {
        ProfileScreen()
    }
}
