//
//  ViewController.swift
//  GroupedTable
//
//  Created by byung-soo kwon on 2017. 2. 3..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        
        return 13
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        
        let cell: UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let number: Int = indexPath.row
        cell.textLabel?.text = "\(number)"
        
        
        
        
        
        
        
        
        return cell
    }

}

