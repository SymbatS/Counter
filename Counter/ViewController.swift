//
//  ViewController.swift
//  Counter
//
//  Created by Symbat Salin on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonDecrement: UIButton!
    @IBOutlet weak var buttonIncrement: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var countLabel: UILabel!
    private var count: Int = 0 {
        didSet {
            countLabel.text = String(count)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "0"
        // Do any additional setup after loading the view.
    }
    @IBAction func decrementDidTap(_ sender: Any) {
        if count == 0 {
            textView.text = "\(getCurrentTime()) попытка уменьшить значение счётчика ниже 0\n" + textView.text
            return
        } else {
            count -= 1
        }
        textView.text = "\(getCurrentTime()) значение изменено на \(count) (-1)\n" + textView.text
    }
    
    @IBAction func incrementDidTap(_ sender: Any) {
        count += 1
        textView.text = "\(getCurrentTime()) значение изменено на \(count) (+1)\n" + textView.text
    }
    
    @IBAction func resetDidTap(_ sender: Any) {
        count = 0
        textView.text = "\(getCurrentTime()) значение сброшено\n" + textView.text

    }
    func getCurrentTime() -> String {
        let originalFormat = DateFormatter()
        originalFormat.dateFormat = "dd-MM-yyyy HH:mm:ss"
        return originalFormat.string(from: Date())
    }
    
}

