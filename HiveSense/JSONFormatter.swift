//
//  JSONFormatter.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class JSONFormatter {
    
    public class func TDJSONtoDataPointArray(json: NSDictionary) -> [DataPoint] {
        print("\n ------------")
        print(json["datapoints"])
        print("\n ----------")
        
        if let element = json["datapoints"] {
            
            print(element[0]!["temperature"]!!)
            print(element[0])
        
        
            var i = 0
            while (i < 4) {
                print(i)
                print("temperature is \(element[i]!["temperature"]!!)")
                print("timestamp is \(element[i]!["timestamp"]!!)")
                i = i + 1
                
            }
        }
        
        return [DataPoint()]
    }
    
    /*
    public class func DataPointArraytoTDJSON(set: [DataPoint]) -> String {
        var json = ""
        for p in set {
            
        }
        return ""
    }
 */
    
}

/*
 
{
 info:{
    id:
 },
 datapoints:
 [
    {timestamp: <timestamp>,
    tempature: <value>,
    humidity:<value>
    }
 
 ]
}
 
 */