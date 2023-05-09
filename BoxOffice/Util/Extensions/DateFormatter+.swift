//
//  DateFormatter+.swift
//  BoxOffice
//
//  Created by 김용재 on 2023/05/09.
//

import UIKit

extension Date {

    static let yearMonthDaySplitDashFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        return formatter
    }()

    static func yesterDayDateConvertToString() -> String {
        let date = Date()
        guard let yesterDay = Calendar.current.date(byAdding: .day, value: -1, to: date) else { return "-" }
        let formatter = Date.yearMonthDaySplitDashFormatter

        return formatter.string(from: yesterDay)
    }

}
