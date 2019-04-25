//
//  NewsCell.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 25.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    static let reuseId = "NewsCell"

    @IBOutlet weak var newsTextViwq: UITextView!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentsButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var sharesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var eyeImage: UIImageView!
    @IBOutlet weak var seenLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
