//
//  VTDDeviceClock.swift
//  VIPER TODO
//
//  Created by Berkus on 11/06/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

import Foundation

class VTDDeviceClock : VTDClock
{
    func today() -> NSDate
    {
        return NSDate.date()
    }
}
