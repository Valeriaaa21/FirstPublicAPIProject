//
//  TableViewCell.swift
//  Api.HW
//
//  Created by Валерия  on 10.01.2023.
//

import UIKit
import SDWebImage


class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    @IBOutlet weak var houseLabel: UILabel!
    
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    
    @IBOutlet weak var wandLabel: UILabel!
    
    @IBOutlet weak var patronusLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(characters: Characters) {
        nameLabel.text = characters.name
        houseLabel.text = "House- "  + (characters.house)
        dateOfBirthLabel.text = "Date of birth- " + characters.dateOfBirth
        wandLabel.text = "Actor- " + characters.actor
        patronusLabel.text = "Patronus- " + characters.patronus
        
        pictureImageView.sd_setImage(with: URL(string: characters.image), completed: nil)
        
    }
}


