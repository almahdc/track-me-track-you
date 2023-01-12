//
//  MixpanelAnalyticsEngine.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Foundation
import Mixpanel

final class MixpanelAnalyticsEngine: AnalyticsEngine {
    func track(named name: String, metadata: [String : String]) {
        Mixpanel.mainInstance().track(event: name, properties: metadata)
    }
}
