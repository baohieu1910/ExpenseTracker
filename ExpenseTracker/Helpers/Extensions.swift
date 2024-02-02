//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation

extension Double {
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
}
