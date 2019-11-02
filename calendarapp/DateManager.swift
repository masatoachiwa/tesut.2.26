//
//  DateManager.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/10/30.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class DateManager: NSObject {

        var selectDay = Date() //日付を取得
        var biginDay = Date()
        var endDay = Date()
        
        let calendar = Calendar.current //カレンダーを取得
        
        
        
        //月カレンダーの始点になる日を求める
        func BeginOfMonthCalender() -> Date{
                
                //現在の日時から（年、月、日）を指定してdateComponentsを取得
                var components = calendar.dateComponents([.year,.month,.day], from: selectDay)
                
                //日付の要素を1日にする
                components.day = 1
                let firstOfMonth = Calendar.current.date(from: components)
           //9月30日？現在が10月なので10月1日ではないのか？1日は１８行目で宣言済み
                
                //曜日を調べて、その要素数だけ戻ったものがカレンダーの左上(日曜日=1 土曜日=7　なので1足した状態で戻る)
                let dayOfWeek = calendar.component(.weekday,from:firstOfMonth!)  //weekday 何番目の曜日　//firstOfMonth 10月１日
                print(dayOfWeek)
                print(calendar.timeZone)
                return calendar.date(byAdding: .day, value: 1-dayOfWeek, to: firstOfMonth!)! //ある日時を基準として特定の日時を取得
                //1-3= -2 つまり1日から-2日した日付を左上にする
                
        }
        
        //月カレンダーの終点になる日を求める
        func EndOfMonthCalendar() ->Date{
                
                //次の月初めを取得　　次に日付が1日になる日
                let nextmonth = calendar.nextDate(after: selectDay, matching: DateComponents(day:1), matchingPolicy: Calendar.MatchingPolicy.nextTime)  //
                
                //曜日を調べて、その要素数だけ進んだものが右下(次の月の初めで計算している事に注意)
                let dayOfWeek = calendar.component(.weekday,from: nextmonth!)
                
                return calendar.date(byAdding: .day, value: 7-dayOfWeek, to: nextmonth!)!  //7-６は=1 つまり1日から1日たした数が右下の日付（10月の場合）
        }
        //月ごとのセルの数を出すメソッド
        func daysAcquisition() -> Int{
                
                //始まりの日と終わりの日を取得
                biginDay = BeginOfMonthCalender()
                endDay = EndOfMonthCalendar()
                
                //始点から終点の日数
                return calendar.dateComponents([.day], from:biginDay ,to:endDay).day! + 1
        }
        //カレンダーの始点から指定した日数を加算した日付を返す
        func conversionDateFormat(index: Int)->String{
                
                let currentday = calendar.date(byAdding: .day, value: index, to: biginDay)
                
                return calendar.component(.day, from: currentday!).description
        }
        
        //今セレクトされているselectDayの年月をテキストで出力
        func CalendarHeader()->String{
                let formatter = DateFormatter()
                formatter.dateFormat = "YYYY/MM/dd"
                
                return formatter.string(from: selectDay)
        }

        func preMonthCalendar(){
                selectDay = calendar.date(byAdding: .month, value: -1, to: selectDay)!
        }
        
        //SelectDayを1か月進ませる
        func nextMonthCalendar(){
                selectDay = calendar.date(byAdding: .month, value: 1, to: selectDay)!
        }
        
        
        
        
        
        
        
        
        
        
}


