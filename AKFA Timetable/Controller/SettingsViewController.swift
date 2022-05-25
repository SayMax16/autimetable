//
//  SettingsViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 19/05/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2;

        // Do any additional setup after loading the view.
    }
    


}
