//
//  CP2_TableViewCell.swift
//  AKFA Timetable
//
//  Created by SAMODIL BEKNAZAROVA on 26/05/22.
//

import UIKit

class CP2_TableViewCell: UITableViewCell {
    static let identifier = "CP2_TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CP2_TableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = UIColor(red: 220/255.0, green: 25/255.0, blue: 10/255.0, alpha: 0.5)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
