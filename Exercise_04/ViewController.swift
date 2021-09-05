//
//  ViewController.swift
//  Exercise_04
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var resultLabel: UILabel!
    private var count = 0

    @IBAction private func countUpButton(_ sender: Any) {
        count += 1
        resultLabel.text = String(count)
    }

    @IBAction private func clearButton(_ sender: Any) {
        count = 0
        updateLabel()
    }

    private func updateLabel() {
        resultLabel.text = String(count)
    }
}

