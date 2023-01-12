//
//  MixpanelAnalyticsEngine.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

//
// Concrete implementation of AnalyticsEngine
//

import Foundation
import Mixpanel

public final class MixpanelAnalyticsEngine: AnalyticsEngine {
    public init() {}

    public func track(named name: String, metadata: [String : String]) {
        Mixpanel.mainInstance().track(event: name, properties: metadata)
    }
}
