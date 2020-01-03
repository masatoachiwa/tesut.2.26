//
//  TopViewController.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/12/17.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

        @IBOutlet var yearLabel: UILabel!
        
        @IBOutlet var doLabel: UILabel!
        
        @IBOutlet var kariLabel: UILabel!
        

        var LovePoint: Int = 0
        
        var a: String = "こんにちは"
        
        let datemanager = DateManager()
        
      let talkManager = TalkManager.shared
        
        let imageViewController = ImageViewController()
        
        var aaa: Int = 0
        
let userDefaults = UserDefaults.standard

        override func viewDidLoad() {
        super.viewDidLoad()
 
                let aaa = UserDefaults.standard.integer(forKey: "point")
                
                LovePoint = aaa
                yearLabel.text = "\(String(datemanager.year))年\(String(datemanager.month))月\(String(datemanager.day))日"
                
          kariLabel.text = TalkManager.shared.numberOfLabel()
                
    }
    

        
        
        @IBAction func goodButton(_ sender: Any) {
                TalkManager.shared.point += 1
       kariLabel.text = TalkManager.shared.numberOfLabel()
        }
                
                
                
        
      
        @IBAction func badButton(_ sender: Any) {
        }
        
        @IBAction func rsetButton(_ sender: Any) {
        }
        
        @IBAction func rest(_ sender: Any) {
         TalkManager.shared.resetPoint()
                 kariLabel.text = TalkManager.shared.numberOfLabel()
        }
        
        
        
}
    


