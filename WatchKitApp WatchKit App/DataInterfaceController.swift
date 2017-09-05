//
//  DataInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import Foundation
import WatchKit

class DataInterfaceConroller: WKInterfaceController {
    
    @IBOutlet var labelPresent: WKInterfaceLabel!
    var dateString: String = "Year: 0"
    
    override func willActivate() {
        super.willActivate()
        labelPresent.setText(dateString)
    }
    @IBAction func goToNextDataInterface() {
        //pushController
        self.presentController(withName: "segueNextDataInterfaceController", context: dateString)

    }
    @IBAction func dateSliderAction(_ value: Float) {
        dateString = "Year: \(value)"
        labelPresent.setText(dateString)
    }
}
