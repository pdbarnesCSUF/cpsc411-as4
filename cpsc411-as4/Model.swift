//
//  Model.swift
//  cpsc411-as4
//
//  Created by CampusUser on 5/13/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import Foundation

class CalcData
{
    public static var shared:CalcData = CalcData()
    
    init()
    {
        currencyArr = ["USD","EUR","GBP","INR","AUD","CAD","SGD","JPY","TWD","CNY"]
        booleanArr = []
        for _ in 0 ..< currencyArr.count
        {
            booleanArr.append(true)
        }
        activeArr = currencyArr
        countnum = 0
    }
    public func updateActive()
    {
        //clear active
        activeArr.removeAll(keepingCapacity: true)
        //reinit active
        for idx in 0 ..< currencyArr.count
        {
            if booleanArr[idx]
            {
                activeArr.append(currencyArr[idx])
            }
        }
    }
    //favs
    public var currencyArr: [String]
    public var booleanArr: [Bool]
    public var countnum:Int //debug int
    public var activeArr: [String]
}
