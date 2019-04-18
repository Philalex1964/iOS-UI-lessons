//
//  LikeControl.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 17.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class LikeControl: UIControl {

    public var isLiked: Bool = false
    let heartImageView = UIImageView()
    let likeNumberView = UIView()
    let likeNumberLabel = UILabel()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    private func setupView() {
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(likeTapped))
        heartImageView.isUserInteractionEnabled = true
        heartImageView.addGestureRecognizer(tapGR)
        
        addSubview(heartImageView)
        heartImageView.image = UIImage(named: "heart")
        addSubview(likeNumberView)
//        likeNumberView.addSubview(likeNumberLabel)
//        likeNumberLabel.text = "0"
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        heartImageView.frame = bounds
    }
    
    //MARK: - Privates
    @objc func likeTapped() {
        isLiked.toggle()
        heartImageView.image = isLiked ? UIImage(named: "heart") : UIImage(named: "heartred")
        likeNumberLabel.text = isLiked ? "0" : "1"
        likeNumberLabel.textColor = isLiked ? .black : .red
        
        sendActions(for: .valueChanged)
        
    }
    
    
}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


