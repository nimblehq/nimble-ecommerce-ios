//
//  ProfileScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct ProfileScreen: View {

    private let sectionViewModels: [SettingSectionViewModel] = {
        var sectionViewModels: [SettingSectionViewModel] = []
        SettingSectionType.allCases.forEach { settingSectionType in
            var cellViewModels: [SettingCellViewModel] = []
            settingSectionType.settingTypes.forEach { settingType in
                cellViewModels.append(
                    .init(
                        id: settingType.rawValue,
                        imageString: settingType.imageString,
                        settingName: settingType.title
                    )
                )
            }
            sectionViewModels.append(
                .init(
                    id: settingSectionType.rawValue,
                    title: settingSectionType.title,
                    cellViewModels: cellViewModels
                )
            )
        }
        return sectionViewModels
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
                            imageString: "avatar-large-icon"
                        )
                    )
                    ForEach(sectionViewModels) { sectionViewModel in
                        Section(header: SettingSectionHeader(viewModel: sectionViewModel.title)) {
                            ForEach(sectionViewModel.cellViewModels) { cellViewModel in
                                SettingCell(viewModel: cellViewModel)
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
