//
//  1TabViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 09/05/22.
//

import UIKit

class FirstTabViewController: UIViewController {

    @IBOutlet weak var weekDays: UILabel!
    
    let dailyChange = DailyViewChanger()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyChange.changeDay(weekDays);
        

    }
    

}
