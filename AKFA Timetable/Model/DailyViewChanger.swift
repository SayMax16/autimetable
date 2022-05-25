//
//  DailyViewChanger.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 19/05/22.
//

import Foundation
import UIKit

struct DailyViewChanger{
    
    let hour = Calendar.current.component(.weekday, from: Date())
    
    func changeDay(_ weekDays: UILabel){
        switch hour{
        case 1:
            weekDays.text = "Sunday"
        case 2:
            weekDays.text = "Monday"
        case 3:
            weekDays.text = "Tuesday"
        case 4:
            weekDays.text = "Wednesday"
        case 5:
            weekDays.text = "Thursday"
        case 6:
            weekDays.text = "Friday"
        default:
            weekDays.text = "Saturday"
        }
    }
    
}
