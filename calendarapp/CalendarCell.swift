//
//  CalendarCell.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/10/18.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class CalendarCell: UICollectionViewCell {
    
        var year: Int?
        var month: Int?
        var day: Int?
        
        var textLabel : UILabel!
     let datemanager = DateManager()
        
        required init?(coder aDecoder: NSCoder) {
         
                super.init(coder:aDecoder)!
            
            
           
                //UILabelを生成
                textLabel = UILabel(frame: CGRect(x:0, y:0, width:self.frame.width,  height: self.frame.height))
                textLabel.font = UIFont(name: "HiraKakuProN-W3", size: 12)
                textLabel.textAlignment = NSTextAlignment.center
                
                // Cellに追加
                self.addSubview(textLabel!)
               
                
        }


        func getToday(year: Int, month: Int,day: Int){
                print(year)
                print(month)
                print(self.textLabel.text!) // ここにcellの日付が入る。
                print("\(String(datemanager.year))年\(String(datemanager.month))月\(String(datemanager.day))日")
                // ここで保存した日付を取得する、今は仮に今日日付を取得
                let dayData = String(datemanager.day)
             //   let dayData2 = "25"
                //　ここで判定を行う
                // self.textLabel.textにはCallenderViewController.swiftで設定した値が入っている。
                if (self.textLabel.text == dayData ){
                        // ○をつける処理を記述する
                        // 今回は一旦テキストの色を赤色に変更
                        self.textLabel.textColor = .red
                }else {
                                          self.textLabel.textColor = .black
                                        }
                        
      
                
                
                
                
                }
                
                
                


        
}


        

        
        
        
        
        
        
        
        
        
        

        
        

