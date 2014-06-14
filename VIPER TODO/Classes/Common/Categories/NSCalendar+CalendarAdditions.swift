//
//  NSCalendar+CalendarAdditions.swift
//  VIPER TODO
//
//  Created by Berkus on 11/06/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

import Foundation

extension NSCalendar {

    /*private*/ func dateForTomorrowRelativeTo(today: NSDate) -> NSDate
    {
        // tomorrow is 1 day after today
        
        // create components for 1 day
        var tomorrowComponents = NSDateComponents()
        tomorrowComponents.setDay(1)
        
        // add the offset (1 day) to today
        return [self dateByAddingComponents:tomorrowComponents toDate:today options:0];
    }
    
    func gregorianCalendar() -> NSCalendar
    {
        return [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    }

    func date(year: NSInteger, month: NSInteger, day: NSInteger) -> NSDate
    {
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setYear:year];
        [components setMonth:month];
        [components setDay:day];
        [components setHour:12];
        
        return [self dateFromComponents:components];
    }

    func dateForEndOfFollowingWeekWithDate(date: NSDate) -> NSDate
    {
    }

    func dateForBeginningOfDay(date: NSDate) -> NSDate
    {
        
    }
    
    func dateForEndOfDay(date: NSDate) -> NSDate
    {
        
    }

    func isDateBeforeYearMonthDay(date: NSDate, today: NSDate) -> Bool
    {
        
    }

    func isDateEqualToYearMonthDay(date: NSDate, today: NSDate) -> Bool
    {
    }

    func nearTermRelationForDate(date: NSDate, relativeToToday: NSDate) -> VTDNearTermDateRelation
    {
        var relation = VTDNearTermDateRelation.OutOfRange;
        
        if (isDateBeforeYearMonthDay(date, today: relativeToToday))
        {
            relation = .OutOfRange;
        }
        else if (isDateEqualToYearMonthDay(date, today: relativeToToday))
        {
            relation = .Today;
        }
        else if ([self isDate:date equalToYearMonthDay:[self dateForTomorrowRelativeToToday:today]])
        {
            if ([self isDate:today duringSameWeekAsDate:date])
            {
                relation = .Tomorrow;
            }
            else
            {
                relation = .NextWeek;
            }
        }
        else if ([self isDate:date duringSameWeekAsDate:today])
        {
            relation = .LaterThisWeek;
        }
        else if ([self isDate:date duringWeekAfterDate:today])
        {
            relation = .NextWeek;
        }
        
        return relation;
    }

}
