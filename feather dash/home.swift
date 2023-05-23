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
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                     .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: Costom_View(), isActive: $showShould_Costom_View) {
                        EmptyView()
                    }.navigationBarBackButtonHidden(true)
                    
                    Text("featherdash").font(.system(size: 100, weight: .black, design: .default))
                    
                    HStack{
                        Spacer()
                        VStack{
                            Button(action: {
                            }) {
                                Image("home_button_design")
                            }
                            Button(action: {
                                showShould_Costom_View = true
                            }) {
                                Image("home_button_design2")
                            }
                            Button(action: {
                                
                            }) {
                                Image("shop_button_design")
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
