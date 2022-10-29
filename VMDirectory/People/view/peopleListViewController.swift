//
//  peopleListViewController.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class peopleListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleVM.peopleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! peopleListTableViewCell
        cell.peopleViewModel = peopleCellViewModel(people: peopleVM.peopleData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "peopleStoryboard", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "peopleDetailViewController") as! peopleDetailViewController
        nextViewController.personDetail = peopleVM.peopleData[indexPath.row]
//        self.present(nextViewController, animated:true, completion:nil)
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var peopleTableView: UITableView!
    
    let peopleVM = peopleListVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        peopleVM.fetchCharacterApi { status in
            if status{
                print("Succussfully data fetched")
                self.peopleTableView.reloadData()
            }else{
                print("Failed to fetch data")
            }
            self.activityIndicator.stopAnimating()
        }
    }

}
