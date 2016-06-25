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
        var toReturn: NSDictionary!
        
        let urlPath: String = "http://192.168.2.21:3000/beehive/hives/Unit1"
        let url: NSURL = NSURL(string: urlPath)!
        let request1: NSURLRequest = NSURLRequest(URL: url)
        let response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>=nil
        
        // NO NIL FAILSAFE YET IM SORRY DONALD BAILEY
        
        do{
            
            let dataVal = try NSURLConnection.sendSynchronousRequest(request1, returningResponse: response)
            
            do {
                if let jsonResult = try NSJSONSerialization.JSONObjectWithData(dataVal, options: []) as? NSDictionary {
                    print("\(jsonResult)")
                    toReturn = jsonResult
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            
            
            
        }catch let error as NSError
        {
            print(error.localizedDescription)
        }
        
        return toReturn
    }
    
}