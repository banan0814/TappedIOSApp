//
//  FirstViewController.swift
//  TappedPages
//
//  Created by Vig Balázs on 7/19/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let location = CLLocationCoordinate2D(latitude: 47.9029604,longitude: 20.3858078)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        
        annotation.title = "EKE C épület"
        
        Map.addAnnotation(annotation)
        self.Map.showsUserLocation = true
    }

    @IBOutlet var Map: MKMapView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

