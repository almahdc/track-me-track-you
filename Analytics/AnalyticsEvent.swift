//
//  AnalyticsEvent.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Foundation

// contains all events that our system supports

enum AnalyticsEvent {
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
