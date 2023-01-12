//
//  ViewController.swift
//  Analytics
//
//  Created by Alma Hodzic on 12.01.23.
//

import Analytics
import UIKit

class ViewController: UIViewController {
    private let analyticsManager: AnalyticsManager

    // MARK: – Init –

    init?(coder: NSCoder, analyticsManager: AnalyticsManager) {
        self.analyticsManager = analyticsManager
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("You must create this controller with analyticsManager")
    }
    
    // MARK: – Lifecycle methods –
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analyticsManager.log(AnalyticsEvent.viewScreenViewed)
    }
}

