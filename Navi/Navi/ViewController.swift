//
//  ViewController.swift
//  Navi
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet weak var mySegment: UISegmentedControl!
   
    
    

    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        mySegment.tintColor = UIColor.brown
        
        print("세그먼트가 바뀜 \(index)")
        
        let title = sender.titleForSegment(at: index)
        print("\(title)")
        
    }
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var max: UILabel!
    
    @IBAction func sliding(_ sender: UISlider) {
    
        self.value.text = "\(Int(sender.value*100))"
    
        self.max.text = "\(Int(sender.maximumValue*100))"
        
        
        print(sender.value)
        
    
    
    }
    
    @IBAction func switchAction(_ sender: UISwitch){
        
        if(sender.isOn){
            print("is On")
          
        }else if(!sender.isOn){
            print("is OFF")
            
        }
        
    }
 
    @IBAction func clickPushNaviButton(){

        print("버튼이 눌렸어요")

        
        
        if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "Second"){
            
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
        
    }
    
}

