//
//  ViewController.swift
//  MyFirstTable
//
//  Created by byung-soo kwon on 2017. 2. 2..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var uiTableView: UITableView!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        uiTableView.separatorStyle = UITableViewCellSeparatorStyle.none
        uiTableView.backgroundColor = UIColor.clear
        
    }
    //우리반 친구들
    let names: [[String:Any]] = [["name" : "박세현","age" : 23, "nickname" : "다람쥐"],
                                 ["name" : "임예은", "nickname" : "사과"],
                                 ["name" : "황순상","age" : 25, "nickname" : "포도"],
                                 ["name" : "정용선","nickname" : "수박"],
                                 ["name" : "권병수","age" : 20, "nickname" : "옥수수"],
                                 ["name" : "김상범","age" : 22, "nickname" : "유자"],
                                 ["age" : 21, "nickname" : "칭구"],
                                 ["name" : "채병훈","age" : 23, "nickname" : "채소"],
                                 ["name" : "조민규","age" : 26, "nickname" : "조개"],
                                 ["name" : "김준희","age" : 24, "nickname" : "준위"]]
                                 
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        
        return self.names.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
     
        
        print("보스, \(indexPath.section) 번째 섹션의 \(indexPath.row) 번째 줄에는 어떤 셀을 보여줘야 합니까?")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        let rowNumber:Int = indexPath.row
        let personDictionary:[String:Any] = self.names[rowNumber]
       
        if let newName:String = personDictionary["name"] as? String{
            
            cell.textLabel?.textColor = UIColor.white
            cell.textLabel?.text = "\(newName)"
        }else {
            
            cell.textLabel?.textColor = UIColor.white
            cell.textLabel?.text = "이름 없음"
        }
        
        
        if let age: Int = personDictionary["age"] as? Int{
            cell.detailTextLabel?.textColor = UIColor.white
            cell.detailTextLabel?.text = "\(age)"
            
        }else {
            
            cell.detailTextLabel?.textColor = UIColor.white
            cell.detailTextLabel?.text = "no age"
        }
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.clear
        } else {
            
            cell.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        }
        
        
        return cell
        
    }

   
}

