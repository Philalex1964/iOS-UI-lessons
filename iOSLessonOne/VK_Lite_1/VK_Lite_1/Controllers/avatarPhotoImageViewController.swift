//
//  avatarPhotoImageViewController.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 14.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit


@IBDesignable class avatarPhotoImageViewController: UIImageView {
}

extension UIImageView {
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius}
    }
}

/*extension UIImageView {
    @IBInspectable var shadowColor: CGColor {
        set { layer.shadowColor = newValue}
        get { return layer.shadowColor ?? UIColor.black.cgColor}
    }
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue}
        get { return layer.shadowOpacity }
    }
    @IBInspectable var shadowRadius: CGFloat {
        set { layer.shadowRadius = newValue}
        get { return layer.shadowRadius}
    }
}*/





