//
//  ViewController.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPeople(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "peopleStoryboard", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "peopleListViewController") as! peopleListViewController
//        self.present(nextViewController, animated:true, completion:nil)
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    @IBAction func buttonRoom(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "roomStoryboard", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "roomViewController") as! roomViewController
//        self.present(nextViewController, animated:true, completion:nil)
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

