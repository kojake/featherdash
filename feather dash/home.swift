//
//  ContentView.swift
//  feather dash
//
//  Created by kaito on 2023/05/17.
//

import SwiftUI

struct home: View {
    //画面遷移
    @State private var showShould_Costom_View = false
    //
    @State var buttonOrder = ["START", "SKIN", "SHOP"]
    //buttondesign
    let bgColor = Color.init(red:0.90, green: 0.92, blue: 0.98)
    let buttonColor = Color.init(red: 0.38, green: 0.28, blue: 0.86)
    let lightColor = Color.init(red: 0.54, green: 0.41, blue: 0.95)
    let shadowColor = Color.init(red: 0.25, green: 0.17, blue: 0.75)
    let radius = CGFloat(25)
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                     .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: Costom_View(), isActive: $showShould_Costom_View) {
                        EmptyView()
                    }.navigationBarBackButtonHidden(true)
                    
                    HStack{
                        Spacer()
                        VStack{
                            VStack{
                                Button(action: {
                                    if buttonOrder[0] == "START"{
                                        buttonOrder[0] = "SKIN"
                                        buttonOrder[1] = "SHOP"
                                        buttonOrder[2] = "START"
                                    }
                                    else if buttonOrder[0] == "SKIN"{
                                        buttonOrder[0] = "SHOP"
                                        buttonOrder[1] = "START"
                                        buttonOrder[2] = "SKIN"
                                    }
                                    else if buttonOrder[0] == "SHOP"{
                                        buttonOrder[0] = "START"
                                        buttonOrder[1] = "SKIN"
                                        buttonOrder[2] = "SHOP"
                                    }
                                }) {
                                    Image(systemName: "arrow.up.circle").resizable()
                                        .padding()
                                        .frame(width: 100, height: 100)
                                        .imageScale(.large)
                                        .foregroundColor(Color.white)
                                        .background(Color.green)
                                        .clipShape(Circle())
                                }
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("\(buttonOrder[0])").font(.system(size: 50))
                            }.font(.title)
                                .fontWeight(.black)
                                .frame(width: 170, height: 100)
                                .foregroundColor(.white)
                                .padding(.horizontal, 35)
                                .padding(.vertical, 20)
                                .background(
                                    RoundedRectangle(cornerRadius: radius)
                                        .fill(
                                            // shadowでボタン上部に光沢を持たせる
                                            // .innerはiOS16から対応
                                            .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                            // shadowでボタン下部に影を落とす
                                                .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                        )
                                        .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                        .shadow(color: buttonColor, radius: 20, y: 10)
                                )
                            Spacer()
                            Button(action: {
                                showShould_Costom_View = true
                            }) {
                                Text("\(buttonOrder[1])").font(.system(size: 50))
                            }.font(.title)
                                .fontWeight(.black)
                                .frame(width: 170, height: 160)
                                .foregroundColor(.white)
                                .padding(.horizontal, 35)
                                .padding(.vertical, 20)
                                .background(
                                    RoundedRectangle(cornerRadius: radius)
                                        .fill(
                                            // shadowでボタン上部に光沢を持たせる
                                            // .innerはiOS16から対応
                                            .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                            // shadowでボタン下部に影を落とす
                                                .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                        )
                                        .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                        .shadow(color: buttonColor, radius: 20, y: 10)
                                )
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Text("\(buttonOrder[2])").font(.system(size: 50))
                            }.font(.title)
                                .fontWeight(.black)
                                .frame(width: 170, height: 100)
                                .foregroundColor(.white)
                                .padding(.horizontal, 35)
                                .padding(.vertical, 20)
                                .background(
                                    RoundedRectangle(cornerRadius: radius)
                                        .fill(
                                            // shadowでボタン上部に光沢を持たせる
                                            // .innerはiOS16から対応
                                            .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                            // shadowでボタン下部に影を落とす
                                                .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                        )
                                        .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                        .shadow(color: buttonColor, radius: 20, y: 10)
                                )
                            
                            VStack{
                                Button(action: {
                                    if buttonOrder[0] == "START"{
                                        buttonOrder[0] = "SHOP"
                                        buttonOrder[1] = "START"
                                        buttonOrder[2] = "SKIN"
                                    }
                                    else if buttonOrder[0] == "SHOP"{
                                        buttonOrder[0] = "SKIN"
                                        buttonOrder[1] = "SHOP"
                                        buttonOrder[2] = "START"
                                    }
                                    else if buttonOrder[0] == "SKIN"{
                                        buttonOrder[0] = "START"
                                        buttonOrder[1] = "SKIN"
                                        buttonOrder[2] = "SHOP"
                                    }
                                }) {
                                    Image(systemName: "arrow.down.circle").resizable()
                                        .padding()
                                        .frame(width: 100, height: 100)
                                        .imageScale(.large)
                                        .foregroundColor(Color.white)
                                        .background(Color.green)
                                        .clipShape(Circle())
                                }
                            }
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
