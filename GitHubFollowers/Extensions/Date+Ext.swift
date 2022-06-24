//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 18/06/22.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
