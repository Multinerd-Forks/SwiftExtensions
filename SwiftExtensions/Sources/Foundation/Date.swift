//
//  Date.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/5/2.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Date {
    /// Date year
    public var year: Int {
        return self.get(component: .year)
    }
    /// Date month
    public var month: Int {
        return self.get(component: .month)
    }
    /// Date weekday
    public var weekday: Int {
        return self.get(component: .weekday)
    }
    
    public var weekMonth: Int {
        return self.get(component: .weekOfMonth)
    }
    
    public var days: Int {
        return self.get(component: .day)
    }
    
    public var hours: Int {
        return self.get(component: .hour)
    }
    
    public var minutes: Int {
        return self.get(component: .minute)
    }
    
    public var seconds: Int {
        return self.get(component: .second)
    }
    
    public func get(component: Calendar.Component) -> Int {
        return Calendar.current.component(component, from: self)
    }
}
