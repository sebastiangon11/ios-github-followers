//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 24/01/2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }

}
