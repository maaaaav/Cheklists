//
//  DateTableViewCell.swift
//  Checklists
//
//  Created by ASDiMac2 on 4/27/22.
//

import UIKit

class DateTableViewCell: UITableViewCell {

    @IBOutlet weak var dueDate: UIDatePicker!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
