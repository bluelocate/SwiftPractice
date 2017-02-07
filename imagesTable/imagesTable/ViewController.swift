//
//  ViewController.swift
//  imagesTable
//
//  Created by byung-soo kwon on 2017. 2. 6..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //스토리보드 테이블뷰와 연결할 아울렛 변수
    @IBOutlet weak var tableView: UITableView!
    
    //데이터베이스에서 불러온 사진정보들을 담아놓을 변수
    var photoInfos: Results<PhotoInfo>?
    
    
    
    // ViewController 의 화면이 보여지기 직전에 불려질 함수
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewController 의 화면이 보여질 예정입니다.")
        
        //Realm 을 초기화하여 realm 이라는 이름으로 사용합니다.
        let realm = try? Realm()
        
        //PhotoInfo 에 해당하는 자료들을 데이터베이스에서 불러와서 photoInfos에 넣어줍니다
        self.photoInfos = realm?.objects(PhotoInfo.self)
        
        //테이블뷰를 새로고침합니다
        // 테이블 뷰를 새로고침하면 테이블뷰가 보스에게 다시 row 의 개수와 데이터를 요청합니다.
       
        self.tableView.reloadData()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // photoInfos 는 옵셔널이므로 옵셔널에 값이 없으면 0을 돌려주세요
        return self.photoInfos?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        return cell
    }
    

}

