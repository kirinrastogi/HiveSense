//
//  DataPuller.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class DataPuller {
    
    public class func getJSON(url: String) -> NSDictionary {
        let urlPath: String = "http://192.168.2.59:3000/beehive/hives/Unit1"
        let url: NSURL = NSURL(string: urlPath)!
        let request1: NSMutableURLRequest = NSMutableURLRequest(URL: url)
        var toReturn: NSDictionary!
        
        request1.HTTPMethod = "GET"
        let queue:NSOperationQueue = NSOperationQueue()
        
        NSURLConnection.sendAsynchronousRequest(request1, queue: queue, completionHandler:{ (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
            
            do {
                if let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as? NSDictionary {
                    print("ASynchronous\(jsonResult)")
                    toReturn = jsonResult
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            
            
        })
        
        return toReturn
    }
    
}