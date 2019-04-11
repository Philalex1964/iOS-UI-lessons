//
//  RecommendedGroupsController.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 09.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class RecommendedGroupsController: UIViewController {
    
    public var groupName = ""
    
    public let groups: [Group] = [
        Group(groupName: "FIFA", groupTopic: "Football", groupNumber: 1, groupImageName: "FIFA" ),
        Group(groupName: "NBA", groupTopic: "Basketball", groupNumber: 2, groupImageName: "NBA"),
        Group(groupName: "NHL", groupTopic: "Hockey", groupNumber: 3, groupImageName: "NHL"),
        Group(groupName: "F1", groupTopic: "Racing", groupNumber: 4, groupImageName: "F1"),
        Group(groupName: "Grand Slum", groupTopic: "Tennis", groupNumber: 5, groupImageName: "Grand Slum")
    ]
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            
            title = groupName
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

extension RecommendedGroupsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GroupCell.reuseId, for: indexPath) as? GroupCell else { fatalError("Cell cannot be dequeued")}
        
        cell.groupnameLabel.text = groups[indexPath.row].groupName
        cell.groupImage.image = UIImage(named: groups[indexPath.row].groupImageName)
        
        return cell        
    }
}

extension RecommendedGroupsController: UITableViewDelegate {
    
}
