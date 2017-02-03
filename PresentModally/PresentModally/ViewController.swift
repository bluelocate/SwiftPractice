//
//  ViewController.swift
//  PresentModally
//
//  Created by byung-soo kwon on 2017. 2. 1..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let chat:[String]  = ["날이 좋아서", "날이 좋지않아서", "날이 적당해서"]
    var i: Int = 0
    @IBAction func clickPresentModalButton(){
        print(chat[i%3] + "by Code 버트이 눌렸다.")
        i+=1
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "Second"){
            self.present(secondViewController, animated: true, completion: {
                print("코드를 통해 두번째 화면이 올라왔다.")
            })
        }
    }

}

