//
//  ViewController.swift
//  UITextFeid
//
//  Created by D7703_19 on 2018. 3. 22..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl01: UILabel!
    
    @IBOutlet weak var txt01: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        txt01.placeholder = "입력을 하세요"
        txt01.clearButtonMode = UITextFieldViewMode.whileEditing
        txt01.borderStyle = UITextBorderStyle.line
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn01(_ sender: Any) {
        lbl01.text = "Hello " + txt01.text!
        txt01.text = ""
        txt01.resignFirstResponder()
    }
    
}
