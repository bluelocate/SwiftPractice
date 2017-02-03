//
//  ThirdViewController.swift
//  NameInput
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func modalDismiss(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: {print("dismiss")})
        
    }
    
}
