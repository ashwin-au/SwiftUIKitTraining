//
//  ViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 10/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var loginMessage: UILabel!
    @IBOutlet weak var isSecure: UIButton!
    var secureImage: String {
        return password.isSecureTextEntry ? "eyebrow" : "eye"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func onTapLogin(_ sender: Any) {
        if userName.text == "admin" && password.text == "123" {
            self.loginMessage.text = "Login successfully"
        } else {
            self.loginMessage.text = "Login failed"
        }
    }
    
    @IBAction func showPassword(_ sender: Any) {
        password.isSecureTextEntry.toggle()
        isSecure.setImage(UIImage(systemName: secureImage), for: .normal)
    }
}

