//
//  AnalyticsEngine.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Foundation

// do the actual logging

protocol AnalyticsEngine {
    func track(named name: String, metadata: [String : String])
}
