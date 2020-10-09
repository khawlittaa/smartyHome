//
//  HomeViewController.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var todayDateLabel: UILabel!
    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    @IBOutlet weak var roomsTableView: UITableView!
    
    let HomeVM = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPTableView()
        setUsernameandDate()
    }
    
    func setUsernameandDate(){
        welcomeUserLabel.text = "Welcome \(HomeVM.getUserName()) !"
        todayDateLabel.text = getCurrentDate()
    }
    
    func setUPTableView(){
        roomsTableView.dataSource = self
        roomsTableView.delegate = self
        roomsTableView.registerCell(nib: "RoomTableViewCell", cellreuseIdentifier: "RoomTableViewCell")
    }
    

}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HomeVM.rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTableViewCell") as! RoomTableViewCell
        cell.setCellDate(room: HomeVM.rooms[indexPath.row])
        return cell
    }
}

extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
