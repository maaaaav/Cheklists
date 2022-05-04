//
//  ViewController.swift
//  Checklists
//
//  Created by ASDiMac2 on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {

    let groups:[CheckListGroup] = [
        CheckListGroup (title: "Birthdays", imageName: "Birthdays", items:[ChecklistItem (isChecked: true, name: "congratulate Tomiris " ,remindMe: false)
            ]),
        CheckListGroup(title: "Groceries", imageName: "Groceries",items:[ChecklistItem (isChecked: true, name: "ruurtr", remindMe: true, dueDate: Date())]),
        CheckListGroup(title: "To do", imageName: "Inbox", items:[ChecklistItem (isChecked: true, name: "cjfgjdd", remindMe: false)]),
        CheckListGroup(title: "Chores", imageName: "Chores", items:[ChecklistItem (isChecked: true, name: "ddrr", remindMe: true, dueDate: Date())])
                                                                         
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "MainToGroupDiteils"{
//            print("Передаем информацию")
//            if let vc = segue.destination as? GroupDitelsTableViewController{
//                if let indexPath = tableView.indexPathForSelectedRow{
//                    vc.items = groups [indexPath.row].items
//            }
//        }
//    }
//}
        if segue.identifier == "MainToGroupDetails",
            let vc = segue.destination as? GroupDitelsTableViewController,
            let indexPath = tableView.indexPathForSelectedRow{
            vc.title = groups[indexPath.row].title
            vc.items = groups [indexPath.row].items
        }
        }
}
