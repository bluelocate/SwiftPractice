//
//  ViewController.swift
//  FirstRealm
//
//  Created by byung-soo kwon on 2017. 2. 6..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var diaries: Results<Diary>!
    var picturesArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func picOneButton(_ sender: Any) {
        
        picturesArray.add("01.jpg")
    }
    
  
    @IBAction func picTwoButton(_ sender: Any) {
        picturesArray.add("02.jpg")

    }

    
    @IBAction func saveButton(_ sender: Any) {
        print("savepress")
        let photos = List<Picture>()
        for filename in picturesArray{
            
            let picture = Picture()
            picture.url = filename as! String
            photos.append(picture)
        }
        
        let myDiary = Diary(value: [incrementID(),Date(),textView.text ?? "",photos])
        addDiary(diary: myDiary)
        
        textView.text = ""
        picturesArray = NSMutableArray()
        self.tableView.reloadData()

    }
     func addDiary(diary:Diary){
        
        
        let realm = try! Realm()
        
        
        try! realm.write{
            
            realm.add(diary)
        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    
    func readDiary() {
        
        let realm = try! Realm()
        
        let diaries = realm.objects(Diary.self)
        
        for diary in diaries {
            let text = diary.text
            print(text)
        }
    }
    
    
    func incrementID() -> Int{
        
        let realm = try! Realm()
        
        return (realm.objects(Diary.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }
    
    
    
    
    
    
}

