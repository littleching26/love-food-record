//
//  Item1VC.swift
//  love-food-record
//
//  Created by 林逸清 on 2020/4/29.
//  Copyright © 2020 林逸清. All rights reserved.
//

import UIKit
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        var selectedImageFromPicker: UIImage?
        
        // 取得從 UIImagePickerController 選擇的檔案
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage.rawValue] as? UIImage {
            
            selectedImageFromPicker = pickedImage
        }
        
        // 可以自動產生一組獨一無二的 ID 號碼，方便等一下上傳圖片的命名
        let uniqueString = NSUUID().uuidString
        
        // 當判斷有 selectedImage 時，我們會在 if 判斷式裡將圖片上傳
        if let selectedImage = selectedImageFromPicker {
            
            print("\(uniqueString), \(selectedImage)")
        }
        
        dismiss(animated: true, completion: nil)
    }
}
class Item1VC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBAction func menuClick(_ sender: Any) {
        navigationController?.view.menu()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func uploadBtnAction(_ sender: Any) {
        // 建立一個 UIImagePickerController 的實體
             let imagePickerController = UIImagePickerController()
        
             // 委任代理
             imagePickerController.delegate = self
        
             // 建立一個 UIAlertController 的實體
             // 設定 UIAlertController 的標題與樣式為 動作清單 (actionSheet)
             let imagePickerAlertController = UIAlertController(title: "上傳圖片", message: "請選擇要上傳的圖片", preferredStyle: .actionSheet)
        
             // 建立三個 UIAlertAction 的實體
             // 新增 UIAlertAction 在 UIAlertController actionSheet 的 動作 (action) 與標題
             let imageFromLibAction = UIAlertAction(title: "照片圖庫", style: .default) { (Void) in
        
                 // 判斷是否可以從照片圖庫取得照片來源
                 if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
        
                     // 如果可以，指定 UIImagePickerController 的照片來源為 照片圖庫 (.photoLibrary)，並 present UIImagePickerController
                     imagePickerController.sourceType = .photoLibrary
                     self.present(imagePickerController, animated: true, completion: nil)
                 }
             }
             let imageFromCameraAction = UIAlertAction(title: "相機", style: .default) { (Void) in
        
                 // 判斷是否可以從相機取得照片來源
                 if UIImagePickerController.isSourceTypeAvailable(.camera) {
        
                     // 如果可以，指定 UIImagePickerController 的照片來源為 照片圖庫 (.camera)，並 present UIImagePickerController
                     imagePickerController.sourceType = .camera
                     self.present(imagePickerController, animated: true, completion: nil)
                 }
             }
        
             // 新增一個取消動作，讓使用者可以跳出 UIAlertController
             let cancelAction = UIAlertAction(title: "取消", style: .cancel) { (Void) in
        
                 imagePickerAlertController.dismiss(animated: true, completion: nil)
             }
        
             // 將上面三個 UIAlertAction 動作加入 UIAlertController
             imagePickerAlertController.addAction(imageFromLibAction)
             imagePickerAlertController.addAction(imageFromCameraAction)
             imagePickerAlertController.addAction(cancelAction)
        
             // 當使用者按下 uploadBtnAction 時會 present 剛剛建立好的三個 UIAlertAction 動作與
             present(imagePickerAlertController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
