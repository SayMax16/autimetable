//
//  SettingsViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 19/05/22.
//

import UIKit

class SettingsViewController: UIViewController , SheetManagerDelegate{
    func didUpdateSheet(_ sheetManager: SheetManager, sheet: SheetModel) {
        DispatchQueue.main.async {
            self.profileName.text = sheet.name
            self.studentID.text = sheet.id
            self.groupID.text = sheet
                .group_id
            
        }
    }
    
    func didFailWithError(error: Error) {
        print("Failed")
    }
    
    
    var sheetManager = SheetManager()
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var groupID: UILabel!
    @IBOutlet weak var studentID: UILabel!
    @IBOutlet weak var profileName: UILabel!
    
    override func viewDidLoad() {
        sheetManager.delegate = self
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2;
        
        sheetManager.fetchSheet()
        

    }
    


}
