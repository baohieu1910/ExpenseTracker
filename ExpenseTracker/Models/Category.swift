//
//  Category.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable {
    case donation
    case food
    case entertainment
    case health
    case shopping
    case transportation
    case utilities
    case other
    
    var systemNameIcon: String {
        switch self {
        case .donation: return "heart.circle.fill"
        case .food: return "archivebox"
        case .entertainment: return "tv.music.note"
        case .health: return "staroflife"
        case .shopping: return "cart"
        case .transportation: return "car"
        case .utilities: return "bolt"
        case .other: return "tag"
        }
    }
    
    var color: Color {
        switch self {
        case .donation: return Color("donation")
        case .food: return Color("food")
        case .entertainment: return Color("entertainment")
        case .health: return Color("health")
        case .shopping: return Color("shopping")
        case .transportation: return Color("transportation")
        case .utilities: return Color("utilities")
        case .other: return Color("other")
        }
    }
}

extension Category: Identifiable {
    var id: String { rawValue }
}
