//
//  WidgetFamily+Count.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 21/5/21.
//

import WidgetKit

extension WidgetFamily {

    var maxCount: Int {
        switch self {
        case .systemSmall: return 0
        case .systemMedium: return 4
        case .systemLarge: return 8
        default: return 0
        }
    }
}
