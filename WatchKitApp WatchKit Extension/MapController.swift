//
//  MapController.swift
//  WatchKitApp
//
//  Created by Solid Jaum on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation

class MapController: WKInterfaceController {
    
    
    @IBOutlet var myMap: WKInterfaceMap!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        let mapLocation = CLLocationCoordinate2D(latitude: -15.864355, longitude: -48.031384)
        
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        let region = MKCoordinateRegionMake(mapLocation, coordinateSpan)
        
        myMap.setRegion(region)
        myMap.addAnnotation(mapLocation, with: WKInterfaceMapPinColor.purple)
        
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
