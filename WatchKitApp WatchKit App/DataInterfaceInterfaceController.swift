//
//  DataInterfaceInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation


class DataInterfaceInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelDate: WKInterfaceLabel!
    var dateString: String = "Year: 0"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        labelDate.setText(dateString)
        
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
    
    @IBAction func sliderNumber(_ value: Float) {
        dateString = "Year: \(value)"
        labelDate.setText(dateString)
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "SegueNextDateInterfaceController" {
            return dateString
        }else{
            return nil
        }
    }
}
