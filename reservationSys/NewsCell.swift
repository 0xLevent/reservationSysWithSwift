//
//  NewsCell.swift
//  reservationSys
//
//  Created by Levent KINACI on 1/27/24.
//

import UIKit

class NewsCell: UITableViewCell {

    
    @IBOutlet weak var gunLabel: UILabel!
    
    @IBOutlet weak var yemekLabel: UILabel!
    
    @IBOutlet weak var sepeteEkle: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
