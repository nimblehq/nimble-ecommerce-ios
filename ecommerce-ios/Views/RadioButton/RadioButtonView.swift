//
//  RadioButtonView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct RadioButtonView: View {

    let viewModel: Bool

    var body: some View {
        ZStack {
            if viewModel {
                Circle()
                    .fill(Color.indigoViolet)
                    .frame(width: 14.0, height: 14.0)
            }
            Circle()
                .stroke(Color.indigoViolet, lineWidth: 1.0)
                .frame(width: 24.0, height: 24.0)
        }
    }
}

struct RadioButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            RadioButtonView(viewModel: true)
            RadioButtonView(viewModel: false)
        }
    }
}
