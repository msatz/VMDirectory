//
//  peopleListTableViewCell.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class peopleListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    let imageLoad = ImageLoader()
    var peopleViewModel: peopleCellViewModel!{
        didSet{
            name.text = peopleViewModel.getName
            imageLoad.obtainImageWithPath(imagePath: peopleViewModel.getImageURL) { image in
                self.avatar.image = image
            }
            applyAccessibility()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    override var accessibilityElements: [Any]? {
        set {}
        get {
            return [
                self.avatar as Any,
                self.name as Any]
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func applyAccessibility() {
        self.avatar.isAccessibilityElement = true
        self.name.adjustsFontForContentSizeCategory = true
        self.name.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
    }
    
}

