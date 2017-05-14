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
        booleanArr = [true,true,true,true,true,true,true,true,true,true]
        countnum = 0
    }
    //favs
    public var currencyArr: [String]
    public var booleanArr: [Bool]
    public var countnum:Int //debug int
}
