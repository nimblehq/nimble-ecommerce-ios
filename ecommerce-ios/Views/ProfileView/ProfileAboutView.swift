//
//  ProfileAboutView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI

struct ProfileAboutView: View {

    let viewModel: ProfileAboutViewModel
    var body: some View {
        ZStack {
            HStack(spacing: 12.0) {
                Image(viewModel.imageString)
                    .scaledToFill()
                    .frame(width: 60.0, height: 60.0)
                VStack(alignment: .leading) {
                    Text(viewModel.fullName)
                        .font(.system(size: 17.0).weight(.semibold))
                    Text(viewModel.email)
                        .font(.system(size: 13.0).weight(.light))
                }
                Spacer()
                Image("common-icon/icon-disclosure")
                    .scaledToFill()
                    .frame(width: 8.0, height: 13.0)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 20.0)
        }
    }
}

struct ProfileAboutView_Previews: PreviewProvider {

    static var previews: some View {
        ProfileAboutView(
            viewModel: .init(
                fullName: "Joseph Edmed",
                email: "josephed@mail.com",
                imageString: "avatar-large-icon"
            )
        )
        .frame(width: screenWidth, height: 100.0)
    }
}
