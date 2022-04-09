//
//  ViewController.swift
//  AppWorks School
//
//  Created by AntonChen on 2022/4/8.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var checkfield: UILabel!
    class logInEntry {
        var account = ""
        var password = ""
        var check = ""
        func accountisValid() -> Bool {
            return !(account.isEmpty && password.isEmpty && check.isEmpty)
    }
    }
    
    
    let changeCheckTextColor = UIColor.white
    let changeCheckFieldColor = UIColor.black
    let logIn = logInEntry()
    let myAccount = "appworks_school@gmail.com"
    let myPassword = "1234"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func triggerSegment(_ sender: UISegmentedControl) {
            checkText.backgroundColor = changeCheckTextColor
            checkfield.textColor = changeCheckFieldColor
        checkfield.isEnabled = true
    }
    
    @IBAction func clickButton(_ sender: Any) {
        if accountText.text == myAccount && passwordText.text == myPassword {
            print("successful")
        }else if  accountText.state.isEmpty == true {
            let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        }else if passwordText.state.isEmpty == true {
            let alert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        }else if checkText.state.isEmpty == true {
            let alert = UIAlertController(title: "Error", message: "Password Check should not be empty.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        }else {
            let alert = UIAlertController(title: "Error", message: "Login fail.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
            }
        
}

}
