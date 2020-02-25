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
        
     var n = 0
        
        
        
        
        let datemanager = DateManager()
        
        
        let talkManager = TalkManager.shared
      
        let date = Date() //本日の日付取得
        let dateFormatter = DateFormatter() //文字列からDate型の日付を生成できる（インスタンスの作成）
      
        
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
                
                talkManager.date(abcd:dateFormatter.string(from: date) ) //配列に初期値を代入
                talkManager.badDate(abcd:dateFormatter.string(from: date) )
                talkManager.restDate(abcd:dateFormatter.string(from: date) )
                
                
                
        }
        
        
        
        
        @IBAction func goodButton(_ sender: Any) {
             //     TalkManager.shared.currentType = .good
                TalkManager.shared.point += 1
                kariLabel.text = TalkManager.shared.numberOfLabel()
                pointLabel.text = String(TalkManager.shared.currentTotalPoint)
                
                dateFormatter.dateFormat = "yyyyMMdd" //yyMMddの形式で日付を生成する
                print(dateFormatter.string(from: date)) //本日の日付を取得
                
          talkManager.date(abcd:dateFormatter.string(from: date) )
        print(talkManager.dayArray)
                
                let modifiedDate = Calendar.current.date(byAdding: .day, value: n, to: date)!
                n = n + 1
                print(date)
                print(modifiedDate)
                
        }
        
        
        
        @IBAction func badButton(_ sender: Any) {
                TalkManager.shared.currentType = .bad
                TalkManager.shared.badPoint += 1
                kariLabel.text = TalkManager.shared.badOfLabel()
                badLabel.text = String(TalkManager.shared.currentTotalbadPoint)
                
                dateFormatter.dateFormat = "yyyyMMdd" //yyMMddの形式で日付を生成する
                print(dateFormatter.string(from: date)) //本日の日付を取得
                
                talkManager.badDate(abcd:dateFormatter.string(from: date) )
                print(talkManager.baddayArray)
                
                
                
         
        }
        
        @IBAction func rsetButton(_ sender: Any) {
                dateFormatter.dateFormat = "yyyyMMdd" //yyMMddの形式で日付を生成する
                print(dateFormatter.string(from: date)) //本日の日付を取得
                
                talkManager.restDate(abcd:dateFormatter.string(from: date) )
                print(talkManager.restdayArray)
                
                
                
                
                
                
        }
        
        @IBAction func rest(_ sender: Any) {
                TalkManager.shared.resetPoint()
                kariLabel.text = TalkManager.shared.numberOfLabel()
                pointLabel.text = String(TalkManager.shared.point)
                badLabel.text = String(TalkManager.shared.badPoint)
                
              
               talkManager.remove()
               
        }
        
        
        
}



