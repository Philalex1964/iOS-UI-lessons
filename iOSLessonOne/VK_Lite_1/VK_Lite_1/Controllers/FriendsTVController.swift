//
//  FriendsTVController.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 07.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class FriendsTVController: UITableViewController {

    
    
    private var friends: [Friend] = [
        Friend(friendName: "Alexey", friendGender: .male, groupMemberNumber: 1, friendImageName: "Alexey"),
        Friend(friendName: "Anton", friendGender: .male, groupMemberNumber: 2, friendImageName: "Anton"),
        Friend(friendName: "Dmitry", friendGender: .male, groupMemberNumber: 3, friendImageName: "Dmitry"),
        Friend(friendName: "Igor", friendGender: .male, groupMemberNumber: 4, friendImageName: "Igor"),
        Friend(friendName: "Uliana", friendGender: .female, groupMemberNumber: 5, friendImageName: "Uliana")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendCell.reuseId, for: indexPath) as? FriendCell else { fatalError("Cell cannot be dequeued")}

        cell.friendnameLabel.text = friends[indexPath.row].friendName
        //cell.friendphotoLabel.image = friends[indexPath.row].friendimageName
        cell.friendphotoImage.image = UIImage(named: friends[indexPath.row].friendImageName)
        
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "Show Photo",
        let photoVC = segue.destination as? PhotosOfFriendsCVController,
        let indexPath = tableView.indexPathForSelectedRow {
        let friendName = friends[indexPath.row].friendName
        
        photoVC.friendName = friendName
        
        //MARK: - An attempt to send Photo together with name. I'll do it in next versions anyway.
        
        //photoVC.photoImageView = friendphotoImage // - здесь загвоздка: не признает photoImageView параметром PhotosOfFriendsCVController =(
        //let friendphotoImage =  UIImage(named:friends[indexPath.row].friendImageName)
        }
    }
}



