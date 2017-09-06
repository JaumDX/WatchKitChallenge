//
//  InterfaceVideo.swift
//  WatchKitApp
//
//  Created by Augusto Henrique de Almeida Silva on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit
import WatchKit

class InterfaceVideo: WKInterfaceController {
    
    @IBOutlet var movie: WKInterfaceMovie!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let myBundle = Bundle.main
        if let movieURL = myBundle.url(forResource: "BEPID", withExtension: "mov") {
            self.movie.setMovieURL(movieURL)
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
