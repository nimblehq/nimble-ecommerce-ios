//
//  CategoryCollectionView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 17/05/2021.
//

import SwiftUI

struct CategoryCollectionView: View {

    var categories: [Category]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(alignment: .top, spacing: 8.0) {
                ForEach(categories) { category in
                    CategoryView(category: category)
                        .frame(width: 80.0, height: 88.0)
                }
            }
            .padding(.vertical, 10.0)
            .padding(.horizontal, 15.0)
        }
    }
}

struct CategoryCollectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryCollectionView(categories: Category.categories)
            .previewLayout(
                .fixed(
                    width: UIScreen.main.bounds.width,
                    height: 88.0
                )
            )
    }
}
