//
//  UserViewController.swift
//  ApotechCare
//
//  Created by Muhammad Harviando on 13/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    public let defaults = UserDefaults.standard
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    // One call execution
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let newName = defaults.string(forKey: "userName") {
            userNameLabel.text = newName
            print(newName)
        }
        if let newEmail = defaults.string(forKey: "email") {
            emailLabel.text = newEmail
            print(newEmail)
        }
        if let newPhone = defaults.string(forKey: "phonenumber") {
            phoneNumberLabel.text = newPhone
            print(newPhone)
        }
        if let newAddress = defaults.string(forKey: "address") {
            addressLabel.text = newAddress
            print(newAddress)
        }
    }
}
