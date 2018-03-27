//
//  ViewController.swift
//  UITextFeid
//
//  Created by D7703_19 on 2018. 3. 22..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lbl01: UILabel!
    
    @IBOutlet weak var txt01: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        // UITextFieldDelagte 객체와 viewController 객체와 연결
        txt01.delegate = self
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
    //backgroung의 view를 누르면 키패드가 내려간다
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txt01.resignFirstResponder()
    }
    
    //UITextFiedlDelgate 메소드 호출
    //Delegate 함수 : 특정시점에서 호출된 함수
    //called when 'return' key pressed. return No to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.yellow
        txt01.resignFirstResponder()
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        txt01.resignFirstResponder()
        return true
    }
}
