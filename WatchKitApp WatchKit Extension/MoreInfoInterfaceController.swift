//
//  MoreInfoInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation


class MoreInfoInterfaceController: WKInterfaceController {

    @IBOutlet var textLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let textInfo = context as? String {
            textLabel.setText(textInfo)
        }
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

}
