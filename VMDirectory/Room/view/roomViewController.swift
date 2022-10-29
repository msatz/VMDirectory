//
//  roomViewController.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import UIKit

class roomViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var roomTableView: UITableView!
    let roomVM = roomListVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        roomVM.fetchCharacterApi { status in
            if status{
                print("Succussfully data fetched")
                self.roomTableView.reloadData()
            }else{
                print("Failed to fetch data")
            }
            self.activityIndicator.stopAnimating()
        }
    }

}

extension roomViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roomVM.roomInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! roomTableViewCell
        cell.roomCellVM = roomCellViewModel(room: roomVM.roomInfo[indexPath.row])
        return cell
    }
    
    
}
