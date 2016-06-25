//
//  JSONFormatter.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class JSONFormatter {
    
    public class func TSJSONtoDataPointArray(json: String) -> [DataPoint] {
        var jsonArr: [String]!
        // todo
        jsonArr[0] = ""
        
        
        return [DataPoint()]
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