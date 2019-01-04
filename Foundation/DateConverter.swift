//
//  DateConverter.swift
//
//
//  Created by Alexander Zaporozhchenko on 4/01/18.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import Foundation


final class DateConverter {
    
    static var shared = DateConverter()
    let formatter     = DateFormatter()
    
    func toStringDate(_ value:Int64?) -> String? {
        
        guard let value = value, value > -1 else { return nil }
        
        let date = Date(timeIntervalSince1970: TimeInterval(value / 1000))
        formatter.dateFormat = "dd.MM.yyyy"
        
        return formatter.string(from: date)
    }
    
    func toStringDate(_ timeInterval:TimeInterval?) -> String? {
        
        guard let timeInterval = timeInterval else { return nil }
        
        let date = Date(timeIntervalSince1970: timeInterval)
        formatter.dateFormat = "dd.MM.yyyy"
        
        return formatter.string(from: date)
    }
    
    
    func toStringDateWithTime(_ value:Int64?) -> String? {
        
        guard let value = value, value > -1 else { return nil }

        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let date = Date(timeIntervalSince1970: TimeInterval(intValue / 1000))
        return formatter.string(from: date)
    }
    
    func toStringTime(_ value:Int64?) -> String? {
        
        guard let value = value, value > -1 else { return nil }

        formatter.dateFormat = "HH:mm"
        let date             = Date(timeIntervalSince1970: TimeInterval(intValue / 1000))
        return formatter.string(from: date)
    }
}

extension Date {
    func isCurrentYear() -> Bool {
        let calendar    = Calendar.current
        let currentYear = calendar.component(.year, from: Date())
        let thisYear    = calendar.component(.year, from: self)
        return currentYear == thisYear
    }
    
    init?(miliseconds: Int64?) {
        guard let miliseconds = miliseconds else {
            return nil
        }
        
        let timeInterval = TimeInterval(miliseconds / 1000)
        self.init(timeIntervalSince1970:timeInterval)
    }
}

extension Date {
    
    func toMiliseconds() -> Int64 {
        return Int64(self.timeIntervalSince1970) * 1000
    }
    
    func toMilisecondsInt() -> Int {
        return Int(self.timeIntervalSince1970) * 1000
    }
}

