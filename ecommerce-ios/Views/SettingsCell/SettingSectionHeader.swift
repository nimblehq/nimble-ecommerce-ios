//
//  SettingSectionHeader.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import SwiftUI

struct SettingSectionHeader: View {

    let viewModel: String

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Text(viewModel.capitalized)
                    .foregroundColor(.charadeGray)
                    .font(.system(size: 22, weight: .bold))
                    .padding(.horizontal, 16.0)
                    .padding(.vertical, 8.0)
                Spacer()
            }
        }
        .frame(minHeight: 56.0)
    }
}

struct SettingsSectionHeader_Previews: PreviewProvider {
    
    static var previews: some View {
        SettingSectionHeader(viewModel: "My Order")
    }
}
