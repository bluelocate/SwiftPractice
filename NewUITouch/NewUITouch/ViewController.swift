//
//  ViewController.swift
//  NewUITouch
//
//  Created by byung-soo kwon on 2017. 2. 9..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var movingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!
        let position = touch.location(in: self.view)
        
//        self.movingView.frame.origin = position
        print("noew Touch : \(position)")
        
    }
    
    @IBAction func zoomInOut(_ sender: Any) {
        print ("zoom in out")
    }
    
    @IBAction func taptaptap(_ sender: Any) {
        print("taptaptap")
        
    }
    

}

