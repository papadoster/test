//
//  ViewController.swift
//  test
//
//  Created by Marina Karpova on 02.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Alert", message: "Achtung!", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
//            let text = alertController.textFields?.first?.text
//            print(text ?? "nil text")
        }
        
//        alertController.addTextField()
        alertController.addAction(action)
        self.present(alertController, animated: true )
        
    }
    
    
    //MARK: -
    
    
}

