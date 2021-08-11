//
//  ViewController.swift
//  Exercise_04
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButton(_ sender: Any) {
        let num = Int(resultLabel.text!) ?? 0
        let resultNum =  num + 1
        resultLabel.text = String(resultNum)
    }
    @IBAction func clearButton(_ sender: Any) {
        resultLabel.text = "0"
    }
    
}

