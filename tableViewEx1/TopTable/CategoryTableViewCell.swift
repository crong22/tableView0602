//
//  CategoryTableViewCell.swift
//  tableViewEx1
//
//  Created by 여누 on 6/1/24.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 14)
        
        mainImageView.contentMode = .scaleAspectFit
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
}
