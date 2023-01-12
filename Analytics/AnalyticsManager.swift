//
//  AnalyticsManager.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Foundation

// send events to AnalyticsEngine

final class AnalyticsManager {
    private let engine: AnalyticsEngine
    
    init(engine: AnalyticsEngine) {
        self.engine = engine
    }
    
    func log(_ event: AnalyticsEvent) {
        engine.track(named: event.name, metadata: event.metadata)
    }
}
