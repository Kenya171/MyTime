//
//  Setting View.swift
//  My Time
//
//  Created by 藤川賢也 on 2023/04/12.
//

import SwiftUI

struct SettingView: View {
    //永続化する秒数設定（初期値は10）
    @AppStorage("timer_value") var timerValue = 10
    
    var body: some View {
        ZStack{
            Color("backgroundSetting")
                .ignoresSafeArea()
            //垂直にレイアウト
            VStack{
                Spacer()
                Text("\(timerValue)秒")
                    .font(.largeTitle)
                    Spacer()
                //pickerを表示
                Picker(selection: $timerValue){
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(60)
                } label: {
                    Text("選択")
                }
                //pickerをホイール表示
                .pickerStyle(.wheel)
            }//VStack
        }//ZStack
    }//body
}//SettingView

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
