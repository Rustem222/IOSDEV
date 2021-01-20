//
//  ViewController.swift
//  IOS
//
//  Created by Rustem on 1/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logIn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController")
            as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

