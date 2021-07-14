//
//  ViewController.swift
//  CallBackHell
//
//  Created by Takuya Ando on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 引数を省略するクロージャのパターン
        let division = { $0 * 40 }
        print(division(20))
        
        let checker = { price in
            if price > 1000 {
                print("高価")
            } else {
                print("そうでもない")
            }
        }
        
        
        //年齢から、成人済みかのメッセージを返す
        let ageCheckMessage = { age in
            if age < 20 {
                print("ha")
            }
        }
         
        //クロージャを実行する
        print(ageCheckMessage(26))
        
        print(checker(200))
//        // kがコールバック
//        let sum = { (x: Int, y: Int, k: (Int) -> Int) in
//            return k(x + y)
//        }
//
////        var num = sum(1, sum(2, 3))
//
//        label.text = String(num)
    }

}

