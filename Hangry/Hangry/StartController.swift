//
//  ViewController.swift
//  Hangry
//
//  Created by Hannah Teuteberg on 05/02/15.
//  Copyright (c) 2015 Futurice. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    var restaurants: [Restaurant] = []

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        var restaurant1 = Restaurant(name: "Ishin", lat: 52.507970, lon: 13.392432)
        var restaurant2 = Restaurant(name: "Viet Bowl", lat: 52.508057, lon: 13.392765)
        var restaurant3 = Restaurant(name: "Caramel", lat: 52.507745, lon: 13.393023)
        var restaurant4 = Restaurant(name: "Corner Pizza", lat: 52.506967, lon: 13.392218)
        self.restaurants = [restaurant1, restaurant2, restaurant3, restaurant4]
        println("test")

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        var buttonBackground: UIImage = self.getImageWithColor(UIColor.lightGrayColor(), size: CGSizeMake(100, 40))
        button.setBackgroundImage(buttonBackground, forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showRestaurantSuggestion(sender: AnyObject) {
        self.performSegueWithIdentifier("pushRestaurantDetails", sender: self)
    }

    func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        var rect = CGRectMake(0, 0, size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "pushRestaurantDetails") {
            let restaurantDetailsController = segue.destinationViewController as RestaurantDetailsController
            let randomIndex = Int(arc4random_uniform(UInt32(restaurants.count)))
            restaurantDetailsController.restaurant = restaurants[randomIndex]
        }
    }
}

