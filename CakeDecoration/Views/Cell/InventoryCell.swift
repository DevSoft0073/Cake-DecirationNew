//
//  InventoryCell.swift
//  CakeDecoration
//
//  Created by MyMac on 14/08/21.
//

import UIKit

class InventoryCell: UITableViewCell {

    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var btnDlt: UIButton!
    @IBOutlet weak var lblOrder: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
