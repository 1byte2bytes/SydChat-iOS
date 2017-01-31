//
//  ViewController.swift
//  SydChat
//
//  Created by Sydney Erickson on 1/30/17.
//  Copyright © 2017 Sydney Erickson. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var UIUsernameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func UILoginButtonPress(_ sender: UIButton) {
        if UIUsernameField?.text != "" {
            FIRAuth.auth()?.signInAnonymously(completion: { (user, error) in
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
            self.performSegue(withIdentifier: "LoginToChat", sender: nil)
            })
        }
    }
    
}

