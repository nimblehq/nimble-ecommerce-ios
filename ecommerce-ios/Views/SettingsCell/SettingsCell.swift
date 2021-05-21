//
//  SettingCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import SwiftUI

struct SettingsCell: View {

    let viewModel: SettingsCellViewModel

    var body: some View {
        HStack(spacing: 14.0) {
            Color.white
                .frame(width: 44.0, height: 44.0)
                .overlay {
                    Image(viewModel.imageString)
                        .scaledToFit()
                        .frame(maxWidth: 23.0, maxHeight: 23.0)
                }
            Text(viewModel.settingName)
                .font(.system(size: 17.0, weight: .regular))
                .foregroundColor(.mineShaftGray)
            Spacer()
            Image("common-icon/icon-disclosure")
                .scaledToFill()
                .frame(width: 8.0, height: 13.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct SettingsCell_Previews: PreviewProvider {

    static var previews: some View {
        SettingsCell(viewModel: .init(id: 0, imageString: "screen-profile/icon-my-order", settingName: "My orders"))
    }
}
