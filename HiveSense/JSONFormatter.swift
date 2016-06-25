//
//  JSONFormatter.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class JSONFormatter {
    
    public class func TDJSONtoDataPointArray(json: String) -> [DataPoint] {
        var jsonArr: [String]!
        // todo
        jsonArr[0] = ""
        
        return [DataPoint()]
    }
    
    public class func DataPointArraytoTDJSON(set: [DataPoint]) -> String {
        var json = ""
        for p in set {
            //json +=
        }
        return ""
    }
    
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