//
//  StudentsInformation.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 11/05/22.
//

import Foundation
import UIKit


struct StudentsInformation{
    
    let studentIDs = ["21SE041", "21SE077" , "21SE051", "21SE018", "21SE037", "21SE052"]
    
    
    func studentNotFound (idNumber : String) -> Bool{
        var found = true
        for i in studentIDs{
            if (i == idNumber){
                found = false
            }
        }
        return found
    }
    
    
    
}
