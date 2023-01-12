//
//  AnalyticsEvent.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

//
//  Contains all events that our system supports
//

import Foundation

public enum AnalyticsEvent {
    case viewScreenViewed
}

extension AnalyticsEvent {
    var name: String {
        switch self {
        case .viewScreenViewed:
            return "viewScreenViewed"
        }
    }
    
    var metadata: [String: String] {
        switch self {
        case .viewScreenViewed:
            return [:]
        }
    }
}
