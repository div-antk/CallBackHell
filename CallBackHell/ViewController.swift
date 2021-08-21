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
                calc3(e: e) { f in
                    print(f)
                    label.text = String(f)
                }
            }
        }
    }
    
    private func calc1(a: Int, b: Int, completion: (Int) -> ()) {
        let c = a + b
        completion(c)
    }
    
    private func calc2(c: Int, d: Int, completion: (Int) -> ()) {
        let e = c + d
        completion(e)
    }
    
    private func calc3(e: Int, completion: (Int) -> ()) {
        let f = e * 10
        completion(f)
    }
}

