//
//  none_TableViewCell.swift
//  AKFA Timetable
//
//  Created by SAMODIL BEKNAZAROVA on 26/05/22.
//

import UIKit

class none_TableViewCell: UITableViewCell {
    static let identifier = "none_TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "none_TableViewCell", bundle: nil)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = .white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
