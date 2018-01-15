//
//  ViewController.swift
//  check_user_age
//
//  Created by Valdimir Orlov on 2018-01-09.
//  Copyright © 2018 Valdimir Orlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bbtvImage: UIImageView!
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var ageInput: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        let num:Int! = Int(ageInput.text!)
        
        print(num)
        
        if num == nil || num < 0 || num > 120 {
            message.text = "The age should be between 0 and 120"
        }else{
            if num < 21 {
                message.text = "You can not use this app"
            }else{
                message.text = "Welcom to the app!"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bbtvImage.image = UIImage(named: "BBTV_Logo")
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(ViewController.didTapView))
        self.view.addGestureRecognizer(tapRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func didTapView(){
        self.view.endEditing(true)
    }
}

