//
//  RestaurantDetailsController.swift
//  Hangry
//
//  Created by Hannah Teuteberg on 05/02/15.
//  Copyright (c) 2015 Futurice. All rights reserved.
//

import UIKit
import MapKit

class RestaurantDetailsController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantAddressLabel: UILabel!
    @IBOutlet weak var infoBackgroundView: UIView!
    var restaurant: Restaurant?

    init(restaurant: Restaurant) {
        super.init()
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.lightGrayColor()
        mapView.backgroundColor = UIColor.redColor()

        restaurantNameLabel.text = restaurant?.name
        restaurantAddressLabel.text = "\(restaurant!.street) \(restaurant!.streetNumber), \(restaurant!.city) \(restaurant!.district)"

        let location = CLLocationCoordinate2D(
            latitude: restaurant!.lat,
            longitude: restaurant!.lon
        )
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        mapView.setCenterCoordinate(location, animated: false)

        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = restaurant?.name
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}