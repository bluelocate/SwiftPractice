//
//  ViewController.swift
//  ExpandSection
//
//  Created by byung-soo kwon on 2017. 2. 9..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet var tableView:UITableView?
    var hidden:[Bool] = [true, true]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = "A row!"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tapFunction(sender:UITapGestureRecognizer) {
        let section = sender.view!.tag
        let indexPaths = (0..<3).map { i in return IndexPath(item: i, section: section)  }
        
        hidden[section] = !hidden[section]
        
        tableView?.beginUpdates()
        if hidden[section] {
            tableView?.deleteRows(at: indexPaths, with: .fade)
        } else {
            tableView?.insertRows(at: indexPaths, with: .fade)
        }
        tableView?.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if hidden[section] {
            return 0
        } else {
            return 3
        }
    }

}

