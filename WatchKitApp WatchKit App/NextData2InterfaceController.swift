//
//  NextData2InterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation


class NextData2InterfaceController: WKInterfaceController {

    var dateString: String = ""
    @IBOutlet var dayLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        dateString = context as! String
        dayLabel.setText(dateString)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderDay(_ value: Float) {
        var text = " & Day: \(value)"
        dayLabel.setText(dateString + text)
    }
}
