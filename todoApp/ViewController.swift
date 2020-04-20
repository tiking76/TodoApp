//
//  ViewController.swift
//  todoApp
//
//  Created by 舘佳紀 on 2020/04/14.
//  Copyright © 2020 yoshiki Tachi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    //表示するcellの数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Todowork.count
    }
    
    //表示するcellの内容を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for : indexPath)
        TodoCell.textLabel!.text = Todowork[indexPath.row]
        return TodoCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "Todolist") != nil {
            Todowork = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

