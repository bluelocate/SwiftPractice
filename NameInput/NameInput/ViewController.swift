//
//  ViewController.swift
//  NameInput
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    override func viewDidLoad() {

        self.titleLabel.text = "이름을 입력하세요!!"
        
        redValue.tintColor = UIColor.red
        blueValue.tintColor = UIColor.blue
        greenValue.tintColor = UIColor.green
        
        red.text = "\(Int(redValue.value * 255))"
        green.text = "\(Int(greenValue.value * 255))"
        blue.text = "\(Int(blueValue.value * 255))"
        
    }
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    @IBAction func pressEnter(_ sender: UIButton) {
        
            self.nameText.text = "\(inputField.text!)"
    }
    

    
    @IBAction func resetButton(_ sender: UIButton) {
    
        self.nameText.text = nil
    
    }
    
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var redValue: UISlider!
    
    @IBOutlet weak var greenValue: UISlider!
    
    @IBOutlet weak var blueValue: UISlider!
    
    
    @IBAction func sliderColor(_ sender: UISlider) {
        
        redValue.tintColor = UIColor.red
        blueValue.tintColor = UIColor.blue
        greenValue.tintColor = UIColor.green
        
        red.text = "\(Int(redValue.value * 255))"
        green.text = "\(Int(greenValue.value * 255))"
        blue.text = "\(Int(blueValue.value * 255))"
        
        rgbView.backgroundColor = UIColor(red: CGFloat(redValue.value), green: CGFloat(greenValue.value), blue: CGFloat(blueValue.value), alpha: 1)
        
        

    }
  
 
    @IBOutlet weak var nextVCButton: UIButton!
 
    @IBAction func nextVC(_ sender: UIButton) {
        
        if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "Second"){
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
        
        
        
        
        
        
        
    }
    
    @IBOutlet weak var rgbView: UIView!
    
    @IBAction func modalVCButton(_ sender: Any) {
        
        
        if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "Third"){
            
            self.navigationController?.present(nextViewController, animated: true, completion: {print("modal pop")})
            
        }
    }
    

    
    
    
    
}

