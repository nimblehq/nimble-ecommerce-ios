//
//  SearchBarView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var searchKeyword: String

    var body: some View {
        HStack(spacing: 12.0) {
            HStack {
                Image("icon-search")
                    .frame(width: 14.0, height: 14.0)
                    .padding()

                TextField("Search", text: $searchKeyword)
                    .padding(.vertical)

                Color.clear
                    .frame(width: 44.0, height: 44.0)
                    .overlay {
                        Button(
                            action: { searchKeyword = "" },
                            label: { Image("icon-x-circle") }
                        )
                        .hidden(searchKeyword.isEmpty)
                    }
            }
            .background(Color.galleryGray)
            .cornerRadius(10.0)

            Button("Cancel") {
                print("did tap cancel button")
            }
        }
        .padding()
    }
}

struct SearchBarScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchScreen()
    }
}
