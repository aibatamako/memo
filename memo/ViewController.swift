//
//  ViewController.swift
//  memo
//
//  Created by tmk_cheer on 2021/06/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField1:UITextField!
    @IBOutlet var textField2:UITextField!
    @IBOutlet var textView:UITextView!

    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let value = UserDefaults.standard.string(forKey: "WORD")
        let value1 = UserDefaults.standard.string(forKey: "WORD1")
        let value2 = UserDefaults.standard.string(forKey: "WORD2")
        textField1.text = value
        textField2.text = value1
        textView.text = value2
    }
    @IBAction func save(){
      
        UserDefaults.standard.set(textField1.text, forKey: "WORD")
        UserDefaults.standard.set(textField2.text, forKey: "WORD1")
        UserDefaults.standard.set(textView.text, forKey: "WORD2")
       
    }

}

