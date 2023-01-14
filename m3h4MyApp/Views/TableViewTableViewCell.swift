//
//  TableViewTableViewCell.swift
//  m3h4MyApp
//
//  Created by Nazar Kydyraliev on 14/1/23.
//

import UIKit

class TableViewTableViewCell: UITableViewCell {

    @IBOutlet weak var titleForm: UILabel!
    
    @IBOutlet weak var titleFormProfile: UILabel!
    
    @IBOutlet weak var imgInfoProfile: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
