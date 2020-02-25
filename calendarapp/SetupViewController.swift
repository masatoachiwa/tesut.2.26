//
//  SetupViewController.swift
//  calendarapp
//
//  Created by アプリ開発 on 2020/02/20.
//  Copyright © 2020 Masato.achiwa. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController,UITextFieldDelegate {

        
        @IBOutlet var nameText: UITextField!
        
        @IBOutlet var effortText: UITextField!
        
        @IBOutlet var periodText: UITextField!
        
        @IBOutlet var unitText: UITextField!
      
        let setup = SetupManager.shared
        
        
    override func viewDidLoad() {
        nameText.delegate = self
        effortText.delegate = self
        periodText.delegate = self
        unitText.delegate = self
        
        super.viewDidLoad()
        let zzz = UserDefaults.standard.string(forKey: {"name"}())
        
        nameText.text = zzz
        
        let bbb = UserDefaults.standard.string(forKey: {"effort"}())
        effortText.text = bbb
        
        let ccc = UserDefaults.standard.string(forKey: {"period"}())
        periodText.text = ccc
        
        let uuu = UserDefaults.standard.string(forKey: {"unit"}())
        periodText.text = uuu
        
    }
    
        @IBAction func register(_ sender: Any) {
      
        setup.register(name: nameText.text!)
        setup.register2(effort: effortText.text!)
       setup.register3(period: Int(periodText.text!)!)
        setup.register4(unit: unitText.text!)
                
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                // キーボードを閉じる
                textField.resignFirstResponder()

                return true
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                
                self.view.endEditing(true)
      }
        
        
    
}
