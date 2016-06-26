//
//  DataPoint.swift
//  HiveSense
//
//  Created by Kirin Rastogi on 2016-06-25.
//  Copyright © 2016 Kirin Rastogi. All rights reserved.
//

import Foundation

public class DataPoint {
    var time: UInt64 = 0
    var temp: Double = -1.0
    var humidity: Double = -1.0
    var sound: Double = -1.0
    
    func getTemp() -> Double {
        return temp
    }
    
    func getHumid() -> Double {
        return humidity
    }
    
    func getTime() -> UInt64 {
        return time
    }

    func getSound() -> Double {
        return sound
    }
    
    
    func setTime(ntime: UInt64) {
        self.time = ntime
    }
    
    func setTemp(nval: Double) {
        temp = nval
    }
    
    func setHumid(nval: Double) {
        humidity = nval
    }

    func setSound(nval: Double) {
        sound = nval
    }
    
    func toString() -> String {
        var s = "{"
        s += "timestamp:\(getTime()),temperature:\(getTemp()),humidity:\(getHumid())}"
        return s
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