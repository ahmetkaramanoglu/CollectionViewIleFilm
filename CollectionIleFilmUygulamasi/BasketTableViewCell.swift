//
//  BasketTableViewCell.swift
//  CollectionIleFilmUygulamasi
//
//  Created by Ahmet Karamanoğlu on 15.12.2023.
//

import UIKit

class BasketTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sepetImageView: UIImageView!
    
    @IBOutlet weak var sepetAdLabel: UILabel!
    
    
    @IBOutlet weak var sepetFiyatLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
