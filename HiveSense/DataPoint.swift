//
//  DataPoint.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class DataPoint {
    var time: UInt32 = 0
    var temp: Double = -1.0
    var humidity: Double = -1.0
    
    func getTemp() -> Double {
        return temp
    }
    
    func getHumid() -> Double {
        return humidity
    }
    
    func getTime() -> UInt32 {
        return time
    }
    
    
    func setTime(ntime: UInt32) {
        self.time = ntime
    }
    
    func setTemp(nval: Double) {
        temp = nval
    }
    
    func setHumid(nval: Double) {
        humidity = nval
    }
    
    func toString() -> String {
        var s = "{"
        s += "timestamp:\(getTime()),temperature:\(getTemp()),humidity:\(getHumid())}"
        return s
    }
    
    public class func toDataPoint(s: String) -> DataPoint {
        var point: DataPoint = DataPoint()
        var commas: [String]
        commas = s.characters.split{$0 == ","}.map(String.init)
        print(commas)
        for str in commas {
            print("\n")
            var colons: [String] = str.characters.split{$0 == ":"}.map(String.init)
            if (colons[0] == "temperature") {
                point.setTemp(Double(colons[1])!)
            } else if (colons[0] == "timestamp") {
                point.setTime(UInt32(colons[1])!)
            } else if (colons[0] == "humidity") {
                //point.setHumid(Double(colons[1])!)
            }
            print(colons)
            
        }
        return DataPoint()
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