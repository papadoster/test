//
//  ViewController.swift
//  test
//
//  Created by Marina Karpova on 02.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwith = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func showButton(_ sender: UIButton) {
        self.alert(title: "Alert", message: "Hello! This is Error!", style: .alert)
    }
    
    
    //MARK: - 2
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            let text = alertController.textFields?.first?.text
            print(text ?? "nil text")
        }
        
        alertController.addTextField()
        alertController.addAction(action)
        self.present(alertController, animated: true )
    }
    
}

