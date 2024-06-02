//
//  MainTableViewCell.swift
//  tableViewEx1
//
//  Created by 여누 on 6/1/24.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.font = .boldSystemFont(ofSize: 17)
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        
        subLabel.font = .systemFont(ofSize: 14)
        subLabel.textAlignment = .left
        subLabel.textColor = .darkGray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
