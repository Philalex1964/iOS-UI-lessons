//
//  LoginScreenController.swift
//  VK_Lite_1
//
//  Created by Александр Филиппов on 31.03.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class LoginScreenController: UIViewController {
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function)
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print(#function)
    }
    
    /*override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print(#function)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        print(#function)
    }*/

    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if usernameInput.text == "admin",
            passwordInput.text == "123456" {
            print("Authorization successful")
        } else {
            print("Authorization failed")

        }
        
    }
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo as NSDictionary?
        let keyboardSize = (info?.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWasHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
        
    }
    
}
