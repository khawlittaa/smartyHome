//
//  ViewController.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/7/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPUI()
    }
    
    func setUPUI(){
        continueButton.layer.cornerRadius = 5
        continueButton.clipsToBounds = true
    }
    
    @IBAction func ContinueButtonClicked(_ sender: Any) {
        let userName = userNameTextField.text
        UserDefaults.standard.set(userName, forKey: "userName")
        let homeVC = home.instantiateViewController(withIdentifier: "HomeVC")
        navigationController?.pushViewController(homeVC, animated: false)
    }
}

