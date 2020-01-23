//
//  LoginViewController.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 23/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var rememberSwitch: UISwitch!
    let settings = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if settings.bool(forKey: "pref_credentials"){
            userTF.text     = settings.string(forKey: "pref_username")
            passwordTF.text = settings.string(forKey: "pref_password")
        } else {
            settings.set(rememberSwitch.isOn, forKey: "pref_credentials")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if rememberSwitch.isOn {
            settings.set(rememberSwitch.isOn, forKey: "pref_credentials")
            settings.set(userTF.text, forKey: "pref_username")
            settings.set(passwordTF.text, forKey: "pref_password")
        }
    }
    
    @IBAction func tappedOutsideTF(_ sender: Any) {
        userTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
}
