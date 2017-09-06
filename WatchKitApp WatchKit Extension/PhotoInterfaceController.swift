//
//  PhotoInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 06/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation


class PhotoInterfaceController: WKInterfaceController {

    @IBOutlet var imageSpace: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        imageSpace.setImage(UIImage(named: "AppleDeveloperAcademy"))
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
