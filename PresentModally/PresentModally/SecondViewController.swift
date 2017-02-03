//
//  SecondViewController.swift
//  PresentModally
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
@IBAction func clockCloseButton(){
    
        print("\"Close 버튼이 눌렸다\"")
        
        self.dismiss(animated: true){
            print("Second View Controller 화면이 dismiss 되었습니다.")
        }
    }

}
