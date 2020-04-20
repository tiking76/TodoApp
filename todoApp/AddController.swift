//
//  AddController.swift
//  todoApp
//
//  Created by 舘佳紀 on 2020/04/15.
//  Copyright © 2020 yoshiki Tachi. All rights reserved.
//

import UIKit

var Todowork = [String]()

class AddController: UIViewController {

    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func AddButton(_ sender: Any) {
        Todowork.append(TodoTextField.text!)
        TodoTextField.text = ""
        //UserDefaultsはデータを格納しておくところ
        UserDefaults.standard.set(Todowork, forKey: "TodoList")
    }
    
    //viewの更新をしている？
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //アプリが落ちないようにするやつ
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
