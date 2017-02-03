//
//  ViewController.swift
//  GroupedTable
//
//  Created by byung-soo kwon on 2017. 2. 3..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.clear
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return "SECTION - \(section)"
    }
    
    //테이블뷰가 몇개의 섹션인가?
    func numberOfSections(in tableView: UITableView) -> Int{
        
        
        return 3
    }
    
    
    //섹션의 로우 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        //첫번째 섹션이면
        if section == 0 {
            
            
            //두줄을 보여달라
            return 2
    
        }else if section == 1{
            
            //3줄을 보여달라
            return 3
        }else {
            return 15
        }
        
        
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        //섹션이 0번째라면
        if indexPath.section == 0 {
            
            let cell: MyTableViewCell
            cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyTableViewCell
            
            cell.backgroundColor = UIColor.clear
            cell.leftLabel?.text = "hello"
            cell.rightLabel?.text = "world"
            
            
            return cell

        }
        //아니라면
        else {
            
            let cell: UITableViewCell
            
            //1번째 섹션이라면
            if indexPath.section == 1{
                
                cell = tableView.dequeueReusableCell(withIdentifier: "orangeCell", for: indexPath)
                
                cell.backgroundColor = UIColor.clear
                cell.textLabel?.text = "station name"
                //1번째 섹션이 아니라면
            }else {
                
                cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
                
                cell.backgroundColor = UIColor.black.withAlphaComponent(0.1)
                cell.textLabel?.text = "what"
                
            }
            
            cell.textLabel?.backgroundColor = UIColor.clear
            cell.textLabel?.textColor = UIColor.white
            
            
            return cell

           
        }
        
    }
}

