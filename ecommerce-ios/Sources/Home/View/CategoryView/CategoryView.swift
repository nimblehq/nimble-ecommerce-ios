//
//  CategoryView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 17/05/2021.
//

import SwiftUI

struct CategoryView: View {

    var category: Category

    var body: some View {
        VStack(spacing: 0.0) {
            Image(category.imageString)
                .resizable()
                .frame(width: 70.0, height: 62.0)
            Text(category.name)
                .font(.system(size: 13))
        }
    }
}

struct CategoryView_Previews: PreviewProvider {

    static var previews: some View {
        CategoryView(category: Category.categories.first!)
            .previewLayout(.fixed(width: 80.0, height: 88.0))
    }
}
