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
        
        // kがコールバック
        let sum = { (x: Int, y: Int, k: (Int) -> Int) in
            return k(x + y)
        }

//        var num = sum(1, sum(2, 3))

        label.text = String(num)
    }

}

