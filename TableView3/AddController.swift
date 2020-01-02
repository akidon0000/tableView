//
//  AddController.swift
//  TableView
//
//  Created by USER on 2019/12/29.
//  Copyright © 2019 Akidon. All rights reserved.
//

//  AddController.swift
import UIKit

//配列の設置
var Contents:[String] = []

class AddController: UIViewController {
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    @IBAction func TodoAddButten(_ sender: Any) {
        //配列に入力内容を入れる
        Contents.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        
        //変数の中身をUDに追加 アプリを落としても記憶する
        UserDefaults.standard.set( Contents, forKey: "TodoList" )
    }

    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
