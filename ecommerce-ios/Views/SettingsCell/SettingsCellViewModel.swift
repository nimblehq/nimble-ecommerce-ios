//
//  SettingsCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

struct SettingsCellViewModel: Identifiable {

    let id: Int
    let imageString: String
    let settingName: String
}

extension SettingsCellViewModel {

    init(settingType: SettingsType) {
        self.init(
            id: settingType.rawValue,
            imageString: settingType.imageString,
            settingName: settingType.title
        )
    }
}
