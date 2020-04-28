//
//  ViewController.swift
//  love-food-record
//
//  Created by 林逸清 on 2020/4/27.
//  Copyright © 2020 林逸清. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    let list = ["Item1", "Item2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resource that can be recreated.
    }
    
}

