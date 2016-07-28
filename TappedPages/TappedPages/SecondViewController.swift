//
//  SecondViewController.swift
//  TappedPages
//
//  Created by Vig Balázs on 7/19/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {

    @IBOutlet weak var tripTableView: UITableView!
    
    @IBOutlet weak var MapView2: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

