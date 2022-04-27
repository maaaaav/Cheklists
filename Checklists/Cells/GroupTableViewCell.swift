//
//  TableViewCell.swift
//  Checklists
//
//  Created by ASDiMac2 on 4/20/22.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var iconeView: UIImageView!
    @IBOutlet weak var titleLablel: UILabel!
    @IBOutlet weak var subTitleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
