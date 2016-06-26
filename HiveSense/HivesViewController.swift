//
//  HivesViewController.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import UIKit

class HivesViewController: UIViewController {

    @IBOutlet var soundLabel: UILabel!
    @IBOutlet var staticHiveLabel: UILabel!
    var connected = false
    var received = false
    @IBOutlet var retryButton: UIButton!
    @IBOutlet var tempLabel: UILabel!
    var latestPoint: DataPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateScreen()
        self.view!.backgroundColor = UIColorFromHex(16764263, alpha: 1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Hives"
        populateScreen()
        JSONFormatter.TDJSONtoDataPointArray(DataPuller.getJSON("memes"))
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func retryPressed(sender: AnyObject) {
        populateScreen()
        JSONFormatter.TDJSONtoDataPointArray(DataPuller.getJSON("memes"))
        //get data from server
        
    }
    
    func setLabel() {
        if (Reachability.isConnectedToNetwork()) {
            staticHiveLabel.text = "Hive 1"
            connected = true
            
        } else {
            staticHiveLabel.text = "Connecting...";
            connected = false
        }
    }
    
    func populateScreen() {
        // set labels with data
        setLabel()
        setValueLabels()
        
    }
    
    func dataReceived(set: [DataPoint]!) {
        if (set != nil) {
            received = true
            // get latest data point and set it
            var recent: DataPoint = set[0]
            for p in set {
                if (p.getTime() < recent.getTime()) {
                    recent = p
                }
            }
            latestPoint = recent
        }
    }
    
    func setValueLabels() {
        if (received) {
            tempLabel.text = "\(latestPoint.getTemp())"
        }
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
}
