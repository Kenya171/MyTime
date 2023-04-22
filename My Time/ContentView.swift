//
//  ContentView.swift
//  My Time
//
//  Created by 藤川賢也 on 2023/04/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack{
        //　奥から手前方向にレイアウト
            ZStack{
                //背景画像
                Image("backgroundTimer")
                //リサイズする
                    .resizable()
                //セーフエリアを超えて画面全体に配置します
                    .ignoresSafeArea()
                //アスペクト比(縦横比)を維持して短辺基準に収まるようにする
                    .scaledToFit()
                }//ZStackここまで
            //ナビゲーションにボタンを配置
                .toolbar{
                //ナビゲーションバーの右にボタンを追加
                ToolbarItem(placement: .navigationBarTrailing){
                    //ナビゲーション遷移
                    NavigationLink{
                        SettingView()
                    } label: {
                        //テキストを表示
                        Text("秒数設定")
                    }// NavigationLink ここまで
                }// ToolbarItem ここまで
            }// .toolbar　ここまで
        }// NavigationStack ここまで
    }//body　ここまで
}// NavigationStack　ここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
