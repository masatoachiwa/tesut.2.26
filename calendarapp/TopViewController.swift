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
        
        @IBOutlet var pointLabel: UILabel!
        
        @IBOutlet var badLabel: UILabel!
        
     
        
        
        
        
        let datemanager = DateManager()
        
        
        let talkManager = TalkManager.shared
      
        let date = Date()
        let dateFormatter = DateFormatter()
      
        
    //    let newPoint = UserDefaults.standard.integer(forKey: {"point"}()) //消す
        
//        let newbadPoint = UserDefaults.standard.integer(forKey: {"badPoint"}()) //消す
        

        override func viewDidLoad() {
                super.viewDidLoad()
                
       
                yearLabel.text = "\(String(datemanager.year))年\(String(datemanager.month))月\(String(datemanager.day))日"
                
                TalkManager.shared.point = TalkManager.shared.currentTotalPoint
                TalkManager.shared.badPoint = TalkManager.shared.currentTotalbadPoint
                
                switch TalkManager.shared.currentType {
                case .good:
                        kariLabel.text = TalkManager.shared.numberOfLabel()
                          pointLabel.text = String(TalkManager.shared.currentTotalPoint)
                case .bad:
                        kariLabel.text = TalkManager.shared.badOfLabel()
                        
                }
                pointLabel.text = String(talkManager.currentTotalPoint)
             badLabel.text = String(talkManager.currentTotalbadPoint)
        }
        
        
        
        
        @IBAction func goodButton(_ sender: Any) {
             //     TalkManager.shared.currentType = .good
                TalkManager.shared.point += 1
                kariLabel.text = TalkManager.shared.numberOfLabel()
                pointLabel.text = String(TalkManager.shared.currentTotalPoint)
                
                dateFormatter.dateFormat = "yyyyMMdd"
                print(dateFormatter.string(from: date))
                
          talkManager.date(abcd:dateFormatter.string(from: date) )
        print(talkManager.dayArray)
                
        }
        
        
        
        @IBAction func badButton(_ sender: Any) {
                TalkManager.shared.currentType = .bad
                TalkManager.shared.badPoint += 1
                kariLabel.text = TalkManager.shared.badOfLabel()
                badLabel.text = String(TalkManager.shared.currentTotalbadPoint)
                
            //  let aaaa =  UserDefaults.standard.array(forKey: {"dayArray"}())   配列の呼び出し
            //    print(aaaa!)
                
         
        }
        
        @IBAction func rsetButton(_ sender: Any) {
        }
        
        @IBAction func rest(_ sender: Any) {
                TalkManager.shared.resetPoint()
                kariLabel.text = TalkManager.shared.numberOfLabel()
                pointLabel.text = String(TalkManager.shared.point)
                badLabel.text = String(TalkManager.shared.badPoint)
        }
        
        
        
}



