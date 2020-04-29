//
//  Item2VC.swift
//  love-food-record
//
//  Created by 林逸清 on 2020/4/29.
//  Copyright © 2020 林逸清. All rights reserved.
//

import UIKit

class Item2VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func menuClick(_ sender: Any) {
        navigationController?.view.menu()
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
