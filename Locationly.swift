//
//  Locationly.swift
//  Locationly
//
//  Created by David Lari on 10/8/17.
//
import Foundation
import MapKit

typealias LocationlyAction = ((_ result: Locationly.Result) -> ())

class Locationly: NSObject {
    
    enum Result {
        case success(location: CLLocation)
        case failure(error: Error)
    }
    
    let locationManager = CLLocationManager()
    var action: LocationlyAction = { _ in }
    
    func getLocation(completion: @escaping (_ result: Result) -> ()) {
        
        action = completion
        
        // Ask for Authorization from the User.
        // For use in foreground
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        } else {
            //TODO: call action with failure result
        }
    }
    
    deinit {
        locationManager.stopUpdatingLocation()
        locationManager.delegate = nil
        action = { _ in }
    }
}

extension Locationly: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.stopUpdatingLocation()
        
        if let location = locations.last {
            action(Result.success(location: location))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        action(Result.failure(error: error))
    }
}
