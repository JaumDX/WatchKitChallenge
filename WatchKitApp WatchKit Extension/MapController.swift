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

class MapController: WKInterfaceController, CLLocationManagerDelegate {
    
    
    @IBOutlet var myMap: WKInterfaceMap!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestLocation()
        
        // Configure interface objects here.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        let currentLocation = locations[0]
        let lat = currentLocation.coordinate.latitude
        let long = currentLocation.coordinate.longitude
        
        
        let mapLocation = CLLocationCoordinate2D(latitude: lat, longitude: long)
        
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        let region = MKCoordinateRegionMake(mapLocation, coordinateSpan)
        
        myMap.setRegion(region)
        myMap.addAnnotation(mapLocation, with: WKInterfaceMapPinColor.purple)
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
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
