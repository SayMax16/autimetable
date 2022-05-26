//
//  itCS1_TableViewCell.swift
//  AKFA Timetable
//
//  Created by SAMODIL BEKNAZAROVA on 26/05/22.
//

import UIKit

class itCS1_TableViewCell: UITableViewCell {
    static let identifier = "itCS1_TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "itCS1_TableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = .green
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
