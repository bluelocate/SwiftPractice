//
//  SecondViewController.swift
//  Navi
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func clickPopButton(){
    
        print("Pop Button 이 눌렸다.")
    
        self.navigationController?.popViewController(animated: true)
        
        
        
    
    }
}
