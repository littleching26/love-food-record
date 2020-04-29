//
//  ViewController.swift
//  love-food-record
//
//  Created by 林逸清 on 2020/4/27.
//  Copyright © 2020 林逸清. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet var item1View: UIView!
    @IBOutlet var item2View: UIView!
    let list = ["Item1", "Item2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        item1View.frame = view.frame
        view.addSubview(item1View)
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var tmpView : UIView!
        let workingView = view.subviews.last
        if indexPath.row == 0 {
             tmpView = item1View
        }else if (indexPath.row == 1) {
            tmpView = item2View
        }
        tmpView.frame = (workingView?.frame)!
        workingView?.removeFromSuperview()
        view.addSubview(tmpView)
        
        tmpView.subviews.last?.menu()
        
    }
    
}

