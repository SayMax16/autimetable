//
//  1TabViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 09/05/22.
//

import UIKit

class FirstTabViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    

    @IBOutlet weak var weekDays: UILabel!
    
    let dailyChange = DailyViewChanger()

    @IBOutlet var daily_timetable: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyChange.changeDay(weekDays);
        
        daily_timetable.register(itCS1_TableViewCell.nib(), forCellReuseIdentifier: itCS1_TableViewCell.identifier)
        
        daily_timetable.register(CP2_TableViewCell.nib(), forCellReuseIdentifier: CP2_TableViewCell.identifier)
        
        daily_timetable.register(none_TableViewCell.nib(), forCellReuseIdentifier: none_TableViewCell.identifier)

        
        daily_timetable.delegate = self
        daily_timetable.dataSource = self
        

    }
    // Table_view functions
//    extension FirstTabViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
       //   let cell = tableView.cellForRow(at: indexPath)
  }
//}
//    extension FirstTabViewController: UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return 10
        }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        if (indexPath.row > 1) && (indexPath.row <= 5) {
           cell = daily_timetable.dequeueReusableCell(withIdentifier: itCS1_TableViewCell.identifier, for: indexPath)
        }
        else if (indexPath.row >= 6) && (indexPath.row <= 10){
            cell = daily_timetable.dequeueReusableCell(withIdentifier: CP2_TableViewCell.identifier, for: indexPath)
        }else {
            cell = daily_timetable.dequeueReusableCell(withIdentifier: none_TableViewCell.identifier, for: indexPath)
        }
        
     
     return cell!
        
//    }
    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//     cell = tableView.cellForRow(at: indexPath)
//}
    
// }

}

