//
//  TripView.swift
//  TappedPages
//
//  Created by Balázs Víg on 28/07/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class TripView: UIViewController {


    @IBOutlet weak var TripMapview: MKMapView!
    @IBOutlet weak var TripLabel: UILabel!
    
    @IBOutlet weak var TripDistance: UILabel!
    @IBOutlet weak var TripElevation: UILabel!
    @IBOutlet weak var TripTitle: UILabel!
    var TripLabelText = String()
    var TripTitleText = String()
    var TripElevationText = String()
    var TripDistanceText = String()
    
    override func viewDidLoad() {
        
        TripLabel.text = TripLabelText
        TripLabel.numberOfLines=0
        TripLabel.sizeToFit()
        TripTitle.text = TripTitleText
        TripTitle.numberOfLines=0
        TripTitle.sizeToFit()
        TripDistance.text = TripDistanceText
        TripDistance.numberOfLines=0
        TripDistance.sizeToFit()
        TripElevation.text = TripElevationText
        TripElevation.numberOfLines=0
        TripElevation.sizeToFit()
        
    }
    
}
