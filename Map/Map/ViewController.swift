//
//  ViewController.swift
//  Map
//
//  Created by 奈木野諭吉 on 2023/07/26.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var region = MKCoordinateRegion()
        region.center = CLLocationCoordinate2DMake(35.658611, 139.745556)
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        mapView.setRegion(region, animated: false)
        
//        列挙型
        mapView.mapType = .standard
    }
    
//    セグメント変更
    @IBAction func segmentChanged(sender: UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }


}

