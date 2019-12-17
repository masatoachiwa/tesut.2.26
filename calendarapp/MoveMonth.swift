//
//  MoveMonth.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/12/16.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class MoveMonth: NSObject {

        struct MoveMonthRequest {
                
                var year: Int
                var month: Int
                
                init(_ monthCounter: Int) {
                        let calendar = Calendar(identifier: .gregorian)
                        let date = calendar.date(byAdding: .month, value: monthCounter, to: Date())
                        let newDate = calendar.dateComponents([.year, .month], from: date!)
                        year = newDate.year!
                        month = newDate.month!
                }
        }

        
        
}
