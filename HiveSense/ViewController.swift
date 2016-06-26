//
//  ViewController.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var blueImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view!.backgroundColor = UIColorFromHex(16764263, alpha: 1.0)
        blueImage.backgroundColor = UIColorFromHex(6802943, alpha: 1.0)
        navigationController!.navigationBar.barTintColor = UIColorFromHex(16764263, alpha: 1.1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "HiveSense"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        navigationItem.title = nil
        navigationItem.titleView?.backgroundColor = UIColorFromHex(16764263, alpha: 1.0)
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
}

