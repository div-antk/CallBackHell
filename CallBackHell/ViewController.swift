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
        
        calc1(a: 1, b: 1) { c in
            calc2(c: c, d: 1) { e in
                calc3(e: e) {
                }
            }
        }
    }
    
    private func calc1(a: Int, b: Int, completion: (Int) -> Int) -> Int {
        let c = a + b
        completion(c)
//        return c
    }
    
    private func calc2(c: Int, d: Int, operation: @escaping() -> Int) -> Int {
        let e = c + d
        return e
    }
    
    private func calc3(e: Int) -> Int {
        let f = e * 10
        return f
    }
}

