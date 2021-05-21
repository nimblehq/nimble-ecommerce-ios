//
//  Category.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 17/05/2021.
//

import Foundation

struct Category: Identifiable {

    let id: String
    let name: String
    let imageString: String
}

// MARK: - Dummy

extension Category {

    static var categories: [Category] {
        [
            Category(id: "category1", name: "Cube", imageString: "shape/cube"),
            Category(id: "category2", name: "Sphere", imageString: "shape/sphere"),
            Category(id: "category3", name: "Shuzam", imageString: "shape/shuzam"),
            Category(id: "category4", name: "Ico", imageString: "shape/ico"),
            Category(id: "category5", name: "Torus", imageString: "shape/torus"),
            Category(id: "category6", name: "Cylinder", imageString: "shape/cylinder")
        ]
    }
}
