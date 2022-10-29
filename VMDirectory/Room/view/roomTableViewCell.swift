//
//  roomTableViewCell.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class roomTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var availability: UILabel!
    @IBOutlet weak var count: UILabel!
    var roomCellVM: roomCellViewModel!{
        didSet{
            count.text = roomCellVM.getRoomOccupencyCount
            if !roomCellVM.getRoomOccupied{
//                availability.isHidden = true
                availability.text = "Room Available"
                availability.textColor = availableTextColor
                bgView.backgroundColor = availableBGColor
            }else{
//                availability.isHidden = false
                availability.textColor = unAvailableTextColor
                availability.text = "Room Occupied"
                bgView.backgroundColor = unAvailableBGColor
            }
            applyAccessibility()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func applyAccessibility() {
        
        self.availability.adjustsFontForContentSizeCategory = true
        count.adjustsFontForContentSizeCategory = true
        
        self.count.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
        self.availability.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
    }

}
