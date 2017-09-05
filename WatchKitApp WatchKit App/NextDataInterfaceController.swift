//
//  NextDataInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import Foundation
import WatchKit

class NextDateInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelDateDay: WKInterfaceLabel!
    var dateString: String = ""
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let _dateString = context as? String {
            dateString = _dateString
        }
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    @IBAction func sliderDay(_ value: Float) {
        dateString += "& Day: \(value)"
        labelDateDay.setText(dateString)
    }
    @IBAction func segueDataInterfaceController() {
//        pushController()
        self.presentController(withName: "segueDataInterfaceController", context: dateString)
    }

}
