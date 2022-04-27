//
//  ViewController.swift
//  Checklists
//
//  Created by ASDiMac2 on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {

    let groups:[CheckListGroup] = [
        CheckListGroup (title: "Birthdays", imageName: "Birthdays"),
        CheckListGroup(title: "Groceries", imageName: "Groceries"),
        CheckListGroup(title: "To do", imageName: "Inbox"),
        CheckListGroup(title: "Chores", imageName: "Chores")
    ]
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return groups.count
    }
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        
        let group = groups[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell( withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        cell.titleLablel.text = group.title
        cell.iconeView.image = UIImage(named: group.imageName)
        return cell
    }
    

}

