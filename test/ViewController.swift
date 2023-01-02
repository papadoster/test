//
//  ViewController.swift
//  test
//
//  Created by Marina Karpova on 02.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //CreateSwitch
        self.mySwitch.frame = CGRect(x: 20, y: 120, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        //        self.mySwitch.thumbTintColor = UIColor.darkGray
        self.mySwitch.onTintColor = UIColor.systemYellow
        self.mySwitch.addTarget(self, action: #selector(switchChanged(parametrTarget:)), for: .valueChanged)
        
    }
    
    @objc func switchChanged(parametrTarget: UISwitch) {
        if parametrTarget.isOn {
            print("switch is on")
        } else {
            print("switch is off")
        }
    }
    
    @IBAction func showButton(_ sender: UIButton) {
        self.alert(title: "Alert", message: "Hello! This is Error!", style: .alert)
    }
    
    //AlertFunc
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

