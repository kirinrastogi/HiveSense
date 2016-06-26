//
//  JSONFormatter.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class JSONFormatter {
    
    static let size: Int = 4
    
    public class func TDJSONtoDataPointArray(json: NSDictionary) -> [DataPoint] {
        print("\n ------------")
        print(json["datapoints"])
        print("\n ----------")
        var data = [DataPoint]()
        
        if let element = json["datapoints"] {
            
            print(element[0]!["temperature"]!!)
            print(element[0])
            
            var i = 0
            while (i < size) {
                print(i)
                
                var temp = DataPoint()
                var t: UInt64!
                
                if let check = element[i]!["timestamp"]!! as? UInt64 {
                    print("converted")
                    t = element[i]!["timestamp"]!! as! UInt64
                    print(t)
                } else {
                    print("not")
                    print(element[i]!["timestamp"]!!)
                    t = UInt64(element[i]["timestamp"]!! as! NSDecimalNumber.IntegerLiteralType)
                }
                
                if (t != nil) {
                    temp.setTime(t)
                }

                var d1: Double!
                if let check2 = element[i]!["temperature"]!! as? Double {
                    print("converted double")
                    d1 = element[i]!["temperature"]!! as! Double
                } else {
                    print("not double cv")
                    d1 = nil
                }
                if (d1 != nil) {
                    temp.setTemp(d1)
                }
                
                /*
                var d2: Double!
                if let check3 = element[i]!["humidity"]!! as? Double {
                    print("converted hdouble")
                    d2 = element[i]!["timestamp"]!! as! Double
                } else {
                    d2 = nil
                    print("humid failed")
                }
                
                if (d2 != nil) {
                    temp.setHumid(d2)
                }
 */
                
                data.append(temp)
                
                i = i + 1
                
            }
        }
        
        print("----- \(data[0].getTime())")
        return data
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