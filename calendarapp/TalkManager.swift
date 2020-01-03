//
//  TalkManager.swift
//  calendarapp
//
//  Created by アプリ開発 on 2019/12/17.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class TalkManager {
        
        
        static  let shared = TalkManager() //staticがないとエラー
        private  init(){}
        
        var point = 0 {
                willSet {
                        UserDefaults.standard.set(newValue, forKey: "point") //新しい値をnewValueに保存
                        UserDefaults.standard.synchronize()
                }
        }
        
        var currentTotalPoint: Int {
                get{
                        return  UserDefaults.standard.integer(forKey: "point")
                }
        }
        
        func resetPoint() {
                point = 0
        }
        

        

        
   
        
        
        func numberOfLabel() -> String {
                switch currentTotalPoint {
                case 0:
                        return "これから頑張ろう"
                case 1:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 2:
                        return "やるじゃん！絶対やめたと思った"
                case 3:
                        return "３日続いたね。エライ！"
                case 4:
                        return "そろそろ飽きたころでしょ？"
                case 5:
                        return "最近雨が多いのは＊＊のせいかな？"
               case 6:
                        return "これから頑張ろう"
                case 7:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 8:
                        return "やるじゃん！絶対やめたと思った"
                case 9:
                        return "３日続いたね。エライ！"
                case 10:
                        return "そろそろ飽きたころでしょ？"
                case 11:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 12:
                        return "これから頑張ろう"
                case 13:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 14:
                        return "やるじゃん！絶対やめたと思った"
                case 15:
                        return "３日続いたね。エライ！"
                case 16:
                        return "そろそろ飽きたころでしょ？"
                case 17:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 18:
                        return "これから頑張ろう"
                case 19:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 20:
                        return "やるじゃん！絶対やめたと思った"
                case 21:
                        return "３日続いたね。エライ！"
                case 22:
                        return "そろそろ飽きたころでしょ？"
                case 23:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 24:
                        return "そろそろ飽きたころでしょ？"
                case 25:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 26:
                        return "これから頑張ろう"
                case 27:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 28:
                        return "やるじゃん！絶対やめたと思った"
                case 29:
                        return "３日続いたね。エライ！"
                case 30:
                        return "そろそろ飽きたころでしょ？"
                case 31:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 32:
                        return "これから頑張ろう"
                case 33:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 34:
                        return "やるじゃん！絶対やめたと思った"
                case 35:
                        return "３日続いたね。エライ！"
                case 36:
                        return "そろそろ飽きたころでしょ？"
                case 37:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 38:
                        return "これから頑張ろう"
                case 39:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 40:
                        return "やるじゃん！絶対やめたと思った"
                case 41:
                        return "３日続いたね。エライ！"
                case 42:
                        return "そろそろ飽きたころでしょ？"
                case 43:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 44:
                        return "そろそろ飽きたころでしょ？"
                case 45:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 46:
                        return "これから頑張ろう"
                case 47:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 48:
                        return "やるじゃん！絶対やめたと思った"
                case 49:
                        return "３日続いたね。エライ！"
                case 50:
                        return "そろそろ飽きたころでしょ？"
                case 51:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 52:
                        return "これから頑張ろう"
                case 53:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 54:
                        return "やるじゃん！絶対やめたと思った"
                case 55:
                        return "３日続いたね。エライ！"
                case 56:
                        return "そろそろ飽きたころでしょ？"
                case 57:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 58:
                        return "これから頑張ろう"
                case 59:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 60:
                        return "やるじゃん！絶対やめたと思った"
                case 61:
                        return "３日続いたね。エライ！"
                case 62:
                        return "そろそろ飽きたころでしょ？"
                case 63:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 64:
                        return "そろそろ飽きたころでしょ？"
                case 65:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 66:
                        return "これから頑張ろう"
                case 67:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 68:
                        return "やるじゃん！絶対やめたと思った"
                case 69:
                        return "３日続いたね。エライ！"
                case 70:
                        return "そろそろ飽きたころでしょ？"
                case 71:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 72:
                        return "これから頑張ろう"
                case 73:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 74:
                        return "やるじゃん！絶対やめたと思った"
                case 75:
                        return "３日続いたね。エライ！"
                case 76:
                        return "そろそろ飽きたころでしょ？"
                case 77:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 78:
                        return "これから頑張ろう"
                case 79:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 80:
                        return "やるじゃん！絶対やめたと思った"
                case 81:
                        return "３日続いたね。エライ！"
                case 82:
                        return "そろそろ飽きたころでしょ？"
                case 83:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 84:
                        return "そろそろ飽きたころでしょ？"
                case 85:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 86:
                        return "これから頑張ろう"
                case 87:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 88:
                        return "やるじゃん！絶対やめたと思った"
                case 89:
                        return "３日続いたね。エライ！"
                case 90:
                        return "そろそろ飽きたころでしょ？"
                case 91:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 92:
                        return "これから頑張ろう"
                case 93:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 94:
                        return "やるじゃん！絶対やめたと思った"
                case 95:
                        return "３日続いたね。エライ！"
                case 96:
                        return "そろそろ飽きたころでしょ？"
                case 97:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 98:
                        return "これから頑張ろう"
                case 99:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 100:
                        return "やるじゃん！絶対やめたと思った"
                case 101:
                        return "３日続いたね。エライ！"
                case 102:
                        return "そろそろ飽きたころでしょ？"
                case 103:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 104:
                        return "そろそろ飽きたころでしょ？"
                case 105:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 106:
                        return "これから頑張ろう"
                case 107:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 108:
                        return "やるじゃん！絶対やめたと思った"
                case 109:
                        return "３日続いたね。エライ！"
                case 110:
                        return "そろそろ飽きたころでしょ？"
                case 111:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 112:
                        return "これから頑張ろう"
                case 113:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 114:
                        return "やるじゃん！絶対やめたと思った"
                case 115:
                        return "３日続いたね。エライ！"
                case 116:
                        return "そろそろ飽きたころでしょ？"
                case 117:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 118:
                        return "これから頑張ろう"
                case 119:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 120:
                        return "やるじゃん！絶対やめたと思った"
                case 121:
                        return "３日続いたね。エライ！"
                case 122:
                        return "そろそろ飽きたころでしょ？"
                case 123:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 124:
                        return "そろそろ飽きたころでしょ？"
                case 125:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 126:
                        return "これから頑張ろう"
                case 127:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 128:
                        return "やるじゃん！絶対やめたと思った"
                case 129:
                        return "３日続いたね。エライ！"
                case 130:
                        return "そろそろ飽きたころでしょ？"
                case 131:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 132:
                        return "これから頑張ろう"
                case 133:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 134:
                        return "やるじゃん！絶対やめたと思った"
                case 135:
                        return "３日続いたね。エライ！"
                case 136:
                        return "そろそろ飽きたころでしょ？"
                case 137:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 138:
                        return "これから頑張ろう"
                case 139:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 140:
                        return "やるじゃん！絶対やめたと思った"
                case 141:
                        return "３日続いたね。エライ！"
                case 142:
                        return "そろそろ飽きたころでしょ？"
                case 143:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 144:
                        return "そろそろ飽きたころでしょ？"
                case 145:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 146:
                        return "これから頑張ろう"
                case 147:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 148:
                        return "やるじゃん！絶対やめたと思った"
                case 149:
                        return "３日続いたね。エライ！"
                case 150:
                        return "そろそろ飽きたころでしょ？"
                case 151:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 152:
                        return "これから頑張ろう"
                case 153:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 154:
                        return "やるじゃん！絶対やめたと思った"
                case 155:
                        return "３日続いたね。エライ！"
                case 156:
                        return "そろそろ飽きたころでしょ？"
                case 157:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 158:
                        return "これから頑張ろう"
                case 159:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 160:
                        return "やるじゃん！絶対やめたと思った"
                case 161:
                        return "３日続いたね。エライ！"
                case 162:
                        return "そろそろ飽きたころでしょ？"
                case 163:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 164:
                        return "そろそろ飽きたころでしょ？"
                case 165:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 166:
                        return "これから頑張ろう"
                case 167:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 168:
                        return "やるじゃん！絶対やめたと思った"
                case 169:
                        return "３日続いたね。エライ！"
                case 170:
                        return "そろそろ飽きたころでしょ？"
                case 171:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 172:
                        return "これから頑張ろう"
                case 173:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 174:
                        return "やるじゃん！絶対やめたと思った"
                case 175:
                        return "３日続いたね。エライ！"
                case 176:
                        return "そろそろ飽きたころでしょ？"
                case 177:
                        return "最近雨が多いのは＊＊のせいかな？"
                case 178:
                        return "これから頑張ろう"
                case 179:
                        return "聞いたよー。〇〇始めたんだってね？何日続くんだろうね？（笑"
                case 180:
                        return "やるじゃん！絶対やめたと思った"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                default:
                        return "上限"
                }
        }
        
}
