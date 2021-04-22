//
//  AddUserInfoController.swift
//  ApotechCare
//
//  Created by Muhammad Harviando on 19/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import Foundation
import UIKit

class AddUserInfoController: UIViewController{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pnumberTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var defaults = UserDefaults.standard
    
    
    let alert = UIAlertController(title: "Complete the informations", message: "Please complete all of the informations", preferredStyle: .alert)
    
    let alertOkAction = UIAlertAction(title: "Okay", style: .default)
    
    
    @IBAction func submitDataButton(_ sender: UIButton) {
        if nameTextField.text != "" && emailTextField.text != "" && pnumberTextField.text != "" && addressTextField.text != "" {
            
            defaults.set(nameTextField.text, forKey: "userName")
            defaults.set(emailTextField.text, forKey: "email")
            defaults.set(pnumberTextField.text, forKey: "phonenumber")
            defaults.set(addressTextField.text, forKey: "address")
            
            presentingViewController?.dismiss(animated: true, completion: nil)
        }
        else {
            print("ada yg belum ke isi")
            alert.addAction(alertOkAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
    
}
