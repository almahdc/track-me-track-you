//
//  AnalyticsEngine.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

//
// Abstraction for concrete analytics engine to implement in order to do the actual tracking
//

import Foundation

public protocol AnalyticsEngine {
    func track(named name: String, metadata: [String : String])
}
