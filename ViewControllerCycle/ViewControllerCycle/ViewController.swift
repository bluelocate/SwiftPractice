//
//  ViewController.swift
//  ViewControllerCycle
//
//  Created by byung-soo kwon on 2017. 2. 7..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ViewController가 생성되었습니다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewController 가 화면에 나타나기 직전입니다 < viewWillApeear")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewController 가 화면에 나타난 직후입니다. ciewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ViewController가 화면에서 사라지기 직전입니다. viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController가 화면에서 사라진 직후입니다 viewDidDisappear")
    }
 

    
    //스토리보드의 segue를 통해 화면이 전환될 때 호출될 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let next = segue.destination
        
        //목적지 뷰 컨트롤러가 SecondViewController 인지 확인하여 맞으면 secondViewController 라는 이름으로 사용
        if let secondViewController = next as? SecondViewController {
            print("목적지는 SecondViewController 입니다.")
         
            
        } else{
            
            print("목적지는 SecondViewController 가 아닙니다.")
        }
    }
}

