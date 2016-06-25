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
    var type: String = ""
    var val: Double = -1.0
    
    func getVal() -> Double {
        return val
    }
    
    func getTime() -> UInt32 {
        return time
    }
    
    func getType() -> String {
        return type
    }
    
    func setTime(ntime: UInt32) {
        self.time = ntime
    }
    
    func setType(ntype: String) {
        type = ntype
    }
    
    func setVal(nval: Double) {
        val = nval
    }

}