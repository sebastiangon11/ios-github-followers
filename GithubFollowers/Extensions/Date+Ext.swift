//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 24/01/2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
