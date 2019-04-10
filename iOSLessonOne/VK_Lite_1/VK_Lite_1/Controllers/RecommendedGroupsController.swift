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
    
    private let groups: [Group] = [
        Group(groupName: "EA FIFA", groupTopic: "Football", groupNumber: 1),
        Group(groupName: "EA NBA", groupTopic: "Basketball", groupNumber: 2),
        Group(groupName: "EA NHL", groupTopic: "Hockey", groupNumber: 3),
        Group(groupName: "EA F1", groupTopic: "Racing", groupNumber: 4),
        Group(groupName: "EA Big Slum", groupTopic: "Tennis", groupNumber: 5)
    ]
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            //tableView.delegate = self
            
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
        
        return cell        
    }
    
    
}
