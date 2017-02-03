//
//  ViewController.swift
//  newName
//
//  Created by byung-soo kwon on 2017. 2. 2..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
  
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
 
    
    //when textField begin editing
    func textFieldDidBeginEditing(_ textField: UITextField){
       print("User begin editing")
        
        
        
    }
    
    
    //When pushed textField's return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        //close keyboard
//      textField.resignFirstResponder()
        textField.endEditing(true)
        return true
    
    }
    
    //Noti When Text end editing
    func textFieldDidEndEditing(_ textField: UITextField){
        
        
        print("text Field end editing")
        
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        
        
        if let text = textField.text{
            
            if text.characters.count < 2 {
                print("Enter more Character")
                return false
            }else {
                print("Your input is \(text)")
                return true
            }
            
        }
        return false

    }

    //When changes text field's text then change label
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        
        
        let currentText: String? = textField.text
        
        if let castedText: NSString = currentText as? NSString{
        
            print(castedText)
            self.nameLabel.text = castedText.replacingCharacters(in: range, with: string)
            
        }
        
        
        print("Range : \(range.location),\(range.length), string: \(string)")
        
        return true
        
    }
    



}

