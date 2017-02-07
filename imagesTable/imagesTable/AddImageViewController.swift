//
//  AddImageViewController.swift
//  imagesTable
//
//  Created by byung-soo kwon on 2017. 2. 6..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import UIKit
import RealmSwift


class AddImageViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var selectedImage: UIImageView!
    
    @IBAction func clickSaveButton(_ sender: UIButton) {
        
        
        print("저장 버튼이 눌렸습니다")
        
        //realm 초기화
        let realm = try? Realm()
        
        //사용자 사진을 담을 객체 초기화 하여 photoInfo 이름으로 사용
        let photoInfo: PhotoInfo = PhotoInfo()
        
    
        
        
        
        if let image = self.selectedImage.image{
            
            print("사용자가 선택한 이미지가 있습니다")
            
            //사용자가 선택한 이미지를 jpeg data 형식으로 변환하여 photoInfo 에 저장
            photoInfo.imageData = UIImageJPEGRepresentation(image, 1.0)
            
        } else {
            
            let alert:UIAlertController
            alert = UIAlertController(title: "알림", message: "사진을 선택하세요", preferredStyle: UIAlertControllerStyle.alert)
            
            let okAction: UIAlertAction
            okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
                print("ok")
            })
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            return
            
        }
        
        
        
        if let title = self.titleField.text, title.characters.count>0 {
            print("사용자가 작성한 제목이 있습니다.")
            
            //사용자가 작성한 제목을 저장
            photoInfo.title = title
            
        }else {
            let alert:UIAlertController
            alert = UIAlertController(title: "알림", message: "제목을 써주세요.", preferredStyle: UIAlertControllerStyle.alert)
            
            let okAction:UIAlertAction
            okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            
            
            
        }
        
        
        // realm 에게 photoInfo를 DB에 저장해달라고 요청
        try? realm?.write {
            realm?.add(photoInfo)
            
            //저장을 성공했으면 이전 화면으로 돌아가기
            self.navigationController?.popViewController(animated: true)
            
        }
        
        
        
        
    }
    
    @IBAction func tapImageView(_ sender: UITapGestureRecognizer){
        
        print("사용자가 이미지를 탭했습니다.")
//        showImagePicker(type: .photoLibrary)
        
  
        let actionSheet: UIAlertController
        actionSheet = UIAlertController(title: "액션선택", message: "원하는 액션을 선택해 주세요", preferredStyle: UIAlertControllerStyle.actionSheet)
        
      
        let cancelAction: UIAlertAction
        cancelAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel, handler: {(UIAlertAction) in
        
        print("사용자가 취소함")
        })
        
        let libraryAction: UIAlertAction
        libraryAction = UIAlertAction(title: "사진 가져오기", style: .default, handler: { (UIAlertAction) in
            print("사진첩에서 가져오기")
            
            self.showImagePicker(type: UIImagePickerControllerSourceType.photoLibrary)
        })
        
        let deleteAction: UIAlertAction
        deleteAction = UIAlertAction(title: "현재 사진 삭제", style: .destructive, handler: { (UIAlertAction) in
            print("사진 삭제하기 선택")
            self.selectedImage.image = nil
            
        })
        
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(libraryAction)
        actionSheet.addAction(deleteAction)
        
        
        //actionSheet를 모달로 predsent
        self.present(actionSheet, animated: true, completion: nil)
        
        
    }
    
   
    
    //imagepicker 를 보여준다.
    func showImagePicker (type: UIImagePickerControllerSourceType){
        
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
       
        //imagePicker를 present 해보세요.
        self.present(imagePicker, animated: true, completion: nil)
        
        
        
        
    }
    
    
    //UIImagePickerController delegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        
        print("사용자가 이미지를 선택했어요")
        
        // info 딕셔너리에서 UIImagePickerControllerEditedImage 키에 해당하는 값을 꺼내와 UIImage인지 확인
        if let pickedImage: UIImage = info[UIImagePickerControllerEditedImage] as? UIImage{
            
            self.selectedImage.image = pickedImage
            
        }
        //피커를 화면에서 내려줍니다.
        picker.dismiss(animated: true, completion: nil)
        
        
        
    }

    
    
    
    
    
    
    
}
