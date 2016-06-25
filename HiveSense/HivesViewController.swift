//
//  HivesViewController.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import UIKit

class HivesViewController: UIViewController {

    @IBOutlet var staticHiveLabel: UILabel!
    var connected = false;
    @IBOutlet var retryButton: UIButton!
    @IBOutlet var tempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Hives"
        populateScreen()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func retryPressed(sender: AnyObject) {
        populateScreen()
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
        
    }
    
}
