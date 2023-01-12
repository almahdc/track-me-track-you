//
//  AnalyticsManager.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

//
// Abstraction for direct dependency on AnalyticsEngine
//

import Foundation

public final class AnalyticsManager {
    private let engine: AnalyticsEngine
    
    public init(engine: AnalyticsEngine) {
        self.engine = engine
    }
    
    public func log(_ event: AnalyticsEvent) {
        engine.track(named: event.name, metadata: event.metadata)
    }
}
