//
//  MixpanelBridge.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Foundation
import Mixpanel

enum MixpanelBridge {
    static func start() {
        Mixpanel.initialize(token: "64a436a66d81d602fa375bb254b3d62a", trackAutomaticEvents: true)
        Mixpanel.mainInstance().serverURL = "https://api-eu.mixpanel.com"
    }
}
