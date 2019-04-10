//
//  GroupsTVController.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 07.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class GroupsTVController: UITableViewController {

    public var groups = [
        Group(groupName: "MLB", groupTopic: "Baseball", groupNumber: 1, groupImageName: "MLB"),
        Group(groupName: "Super Bowl", groupTopic: "American Football", groupNumber: 2, groupImageName: "Super Bowl"),
        Group(groupName: "FIDE", groupTopic: "Chess", groupNumber: 3, groupImageName: "FIDE"),
        Group(groupName: "IBU", groupTopic: "Biathlon", groupNumber: 4, groupImageName: "IBU"),
        Group(groupName: "Big Lapot", groupTopic: "Lapta", groupNumber: 5, groupImageName: "Big Lapot")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GroupCell.reuseId, for: indexPath) as? GroupCell else { fatalError("Cell cannot be dequeued")}

        cell.groupnameLabel.text = groups[indexPath.row].groupName
        cell.groupImage.image = UIImage(named: groups[indexPath.row].groupImageName)
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if let recommendedGroupsController = segue.source as? RecommendedGroupsController,
            let indexPath = recommendedGroupsController.tableView.indexPathForSelectedRow {
                    let newGroup = recommendedGroupsController.groups[indexPath.row]
            
                    guard !groups.contains(where: { group -> Bool in
                        return group.groupName == newGroup.groupName
                    }) else { return }
                    self.groups.append(newGroup)
                    tableView.reloadData()
        }
    }
}
