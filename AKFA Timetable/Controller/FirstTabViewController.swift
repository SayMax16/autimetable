//
//  1TabViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 09/05/22.
//

import UIKit

class FirstTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var weekDays: UILabel!
    
    let dailyChange = DailyViewChanger()

    @IBOutlet weak var daily_timetable: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyChange.changeDay(weekDays);
        
        daily_timetable.register(itCS1_TableViewCell.nib(), forCellReuseIdentifier: itCS1_TableViewCell.identifier)
        
        daily_timetable.register(CP2_TableViewCell.nib(), forCellReuseIdentifier: CP2_TableViewCell.identifier)

        
        daily_timetable.delegate = self
        daily_timetable.dataSource = self
        

    }
    // Table_view functions
   // extension ViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
       //   let cell = tableView.cellForRow(at: indexPath)
  }
//}
   // extension ViewController: UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return 10
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        if (indexPath.row >= 3) && (indexPath.row <= 6) {
           cell = daily_timetable.dequeueReusableCell(withIdentifier: itCS1_TableViewCell.identifier, for: indexPath)
        }
        else if (indexPath.row >= 7) && (indexPath.row <= 10){
            cell = daily_timetable.dequeueReusableCell(withIdentifier: CP2_TableViewCell.identifier, for: indexPath)
        }
        
     
     return cell!
   
    }
    
  //  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
    // cell = tableView.cellForRow(at: indexPath)
//}
    
// }

}

