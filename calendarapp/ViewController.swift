//
//  ViewController.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/10/13.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout  {
      
        
      
        

        
        @IBOutlet var collectionView: UICollectionView!
        let weekArray = ["日","月","火","水","木","金","土",]
        let numOfDays = 7
        let dateManager = DateManager()
        
        override func viewDidLoad() {
                super.viewDidLoad()
            
                // レイアウトを調整
                let layout = UICollectionViewFlowLayout() //UICollectionVIewLayoutの調整。Cellの大きさを動的な変更ができない
            
                
                //上下左右の余白の設定
//                layout.sectionInset = UIEdgeInsets(top: 15, left: 1, bottom: 15, right: 1) //左右の余白を０にしてもセルとセルの間に余白ができる上下の余白は問題なし
//
//                layout.minimumInteritemSpacing = 1
                
                collectionView.collectionViewLayout = layout
             
                
        }

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {  //セルの数
      
               
                        if(section == 0){   //section:0は曜日を表示
                                return numOfDays
                        }else{
                                return dateManager.daysAcquisition()       //section:1は日付を表示 　※セルの数は始点から終点までの日数
                        }
        }
        
//                func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //セルに表示する内容を決める
//
//                        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as! CalendarCell
//                        // cellをUIcorectionviewcellからcalendarCell型にダウンキャスト。calendarCellクラスのtextLabelを使えるようにした
//
//                        if(indexPath.section == 0){             //曜日表示
//
//                        // 表示するセルを登録(先程命名した"Cell")
//                        //dequeueReusableCellでセルを再利用する
//
//                        cell.backgroundColor = .red  // セルの色
//                        cell.textLabel.text = weekArray[indexPath.row]
//                        }else{                                  //日付表示
//                                cell.backgroundColor = UIColor.green
//                                cell.textLabel.text = ""           }
//                        return cell
//
//}
        //セルをクリックしたら呼ばれる
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                        
                        //コレクションビューから識別子「CalendarCell」のセルを取得する
                        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CalendarCell
                        if(indexPath.section == 0){             //曜日表示
                                cell.backgroundColor = UIColor.green
                                cell.textLabel.text = weekArray[indexPath.row]
                                
                        }else{                                  //日付表示
                                cell.backgroundColor = UIColor.white
                                cell.textLabel.text = dateManager.conversionDateFormat(index: indexPath.row)    //Index番号から表示する日を求める
                                
                        }
                        return cell
        }
        
        
        
        
        
        
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
              //横方向のスペース調整
                let horizontalSpace : CGFloat = 2
                let _ : CGFloat = 1
              //セルの大きさ（viewの横幅/5-2)
                let cellSize : CGFloat = self.view.bounds.width / 8  - horizontalSpace //画面の横幅/5-2することで5等分より少し小さいcellの大きさに設定しようとすることであっていますか？
                return CGSize(width: cellSize, height: cellSize)
        }
        // アイテム表示領域全体の上下左右の余白を設定（UICollectionViewDelegateFlowLayout が必要）
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
                 let a : CGFloat = 1
                let inset = a  //(self.view.frame.width / 8) / 8
                
                return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        }
//        func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {  //セクションの数
//                return 2 これだとできなかった

//        }
        func numberOfSections(in collectionView: UICollectionView) -> Int {  //セクションの数
                
                return 2
        }

}


