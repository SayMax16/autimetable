//
//  1TabViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 09/05/22.
//

import UIKit

class FirstTabViewController: UIViewController {

    @IBOutlet weak var test: UILabel!
    @IBOutlet weak var weekDays: UILabel!
    
    let dailyChange = DailyViewChanger()
    var sheetManager = SheetManager()
     
    override func viewDidLoad() {
        super.viewDidLoad()
//        sheetManager.delegate = self
       
        
        dailyChange.changeDay(weekDays);
        
        sheetManager.fetchSheet()
    }
    
    func didUpdateSheet(_ sheetManager: SheetManager, sheet: SheetModel){
        DispatchQueue.main.sync {
             test.text = sheet.name

        }
    }
    
    

}
