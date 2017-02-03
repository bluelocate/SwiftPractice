//
//  ViewController.swift
//  SaveInformation
//
//  Created by byung-soo kwon on 2017. 2. 3..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var majorField: UITextField!
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {

        let name:String? = self.nameField.text
        let age: String? = self.ageField.text
        let major: String? = self.majorField.text
        
        print("name: \(name) age: \(age) major: \(major)")
        let 사용자기본정보저장소 = UserDefaults.standard
        사용자기본정보저장소.set(name, forKey: "userName")
        사용자기본정보저장소.set(age, forKey: "userAge")
        사용자기본정보저장소.set(major, forKey: "userMajor")
        사용자기본정보저장소.synchronize()
        
    }

    
    
    
    @IBAction func loadButton(_ sender: UIButton) {
        
        
        let loadData = UserDefaults.standard
        
        let name:String? = loadData.string(forKey: "userName")
        let age:String? = loadData.string(forKey: "userAge")
        let major:String? = loadData.string(forKey: "userMajor")
        
        
        self.nameField.text = name
        self.ageField.text = age
        self.majorField.text = major
        
    }
    
    
    
    
    
    
}

