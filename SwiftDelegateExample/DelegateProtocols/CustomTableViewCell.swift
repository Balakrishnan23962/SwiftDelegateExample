//
//  CustomTableViewCell.swift
//  DelegateProtocols
//
//  Created by Manoj Amsavel on 12/9/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var item: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
