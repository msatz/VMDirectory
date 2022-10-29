//
//  peopleDetailViewController.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class peopleDetailViewController: UIViewController {

    @IBOutlet weak var favColor: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var mailID: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    var personDetail: peopleDataDetail!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageLoad = ImageLoader()
        let detail = peopleCellViewModel(people: personDetail)
        name.text = detail.getName
        mailID.text = detail.getMailId
        jobTitle.text = detail.getJobTitle
        favColor.text = detail.getFavColor
        imageLoad.obtainImageWithPath(imagePath: detail.getImageURL) { image in
            self.profileImage.image = image
        }
        applyAccessibility()
        // Do any additional setup after loading the view.
    }
    private func applyAccessibility() {
        self.profileImage.accessibilityLabel = "profile image"
        self.profileImage.isAccessibilityElement = true
        self.name.adjustsFontForContentSizeCategory = true
        mailID.adjustsFontForContentSizeCategory = true
        jobTitle.adjustsFontForContentSizeCategory = true
        favColor.adjustsFontForContentSizeCategory = true
        self.name.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
        self.mailID.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
        self.jobTitle.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
        self.favColor.font = UIFont.scaledFont(name: "HelveticaNeue", textSize: 17.0)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
