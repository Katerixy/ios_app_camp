//
//  ViewController.swift
//  map_practice
//
//  Created by Kateryna Tserkus on 8/6/25.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapView.delegate = self
        mapView.showsUserLocation = true
    }

    @IBAction func zoomIn(_ sender: Any) {
        let userLocation = mapView.userLocation
        let center = userLocation.location!.coordinate
        let NSdistance = 2000.0  //meters
        let EWdistance = 2000.0  //meters
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: NSdistance, longitudinalMeters: EWdistance)
        mapView.setRegion(region, animated:true)
        
    }
    
    @IBAction func changeMapType(_ sender: Any) {
        switch mapView.mapType {
        case .standard:
            mapView.mapType = .satellite
        case .satellite:
            mapView.mapType = .hybrid
        case .hybrid:
            mapView.mapType = .standard
        default:
            break
        }
    }
}

