//
//  ExpenseLog+Extension.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation
import CoreData

extension ExpenseLog: Identifiable {
    var categoryEnum: Category {
        Category(rawValue: category ?? "") ?? .other
    }
    
    var nameText: String {
        name ?? ""
    }
    
    var dateText: String {
        Utils.dateFormatter.localizedString(for: date ?? Date(), relativeTo: Date())
    }
    
    
}
