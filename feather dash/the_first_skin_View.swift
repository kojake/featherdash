//
//  the_first_skin_View.swift
//  feather dash
//
//  Created by kaito on 2023/05/22.
//

import SwiftUI

struct the_first_skin_View: View {
    //初回で画面が開かれたかを確認するためのプロパティラッパー
    @AppStorage("isFirstView") var isFirstView: Bool = true
    //配列が二つになってめんどくさくなっているのは許して下さい
    @State var skin_list = ["","","","",""]
    @State var current_skin = ""
    //画面遷移
    @State private var showshould_home_View = false
    
    var body: some View {
        NavigationView{
            if isFirstView {
                ZStack{
                    NavigationLink(destination: home(), isActive: $showshould_home_View) {
                        EmptyView()
                    }.navigationBarBackButtonHidden(true)
                    LinearGradient(gradient: Gradient(colors: [.black, .cyan]), startPoint: .leading, endPoint: .trailing)
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            ZStack{
                                Color.gray
                                    .ignoresSafeArea().frame(width: 200).cornerRadius(50)
                                VStack{
                                    ForEach(0..<skin_list.count, id: \.self) { index in
                                        //                                    Image(skin_list[index])
                                        //                                        .resizable()
                                        //                                        .scaledToFill()
                                        //                                        .frame(width: 150, height: 150)
                                        //                                        .cornerRadius(75)
                                        //                                        .overlay(
                                        //                                            RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 4))
                                        Button(action: {
                                            print("Triangle tapped!")
                                        }) {
                                            HStack {
                                                Image(systemName: "cursorarrow.click")
                                                Text("着用する")
                                            }
                                        }.buttonStyle(BlueButtonStyle())
                                        
                                    }
                                }
                            }
                            VStack{
                                Text("スキン\n設定").font(.system(size: 60)).fontWeight(.black)
                                Spacer()
                                ZStack{
                                    Color.white
                                        .ignoresSafeArea().frame(width: 185,height: 400).cornerRadius(30)
                                    VStack{
                                        Text("現在着用中のスキン").fontWeight(.black).font(.title)
                                    }
                                }
                            }
                            Spacer()
                        }
                        Spacer()
                        Button(action: {
                            showshould_home_View = true
                        }) {
                            Text("これでOK!").frame(width: 340).font(.title).fontWeight(.black)
                        }
                        .padding()
                        .accentColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(.infinity)
                    }
                }
            }else{
                EmptyView()
            }
        }
    }
}
struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 28, weight:.bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(5)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(20)
            .shadow(color:.black, radius: 4)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct the_first_skin_View_Previews: PreviewProvider {
    static var previews: some View {
        the_first_skin_View()
    }
}
