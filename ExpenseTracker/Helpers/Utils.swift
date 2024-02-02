//
//  Utils.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation

struct Utils {
    static let dateFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }
}
