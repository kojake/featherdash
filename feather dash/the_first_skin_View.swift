//
//  the_first_skin_View.swift
//  feather dash
//
//  Created by kaito on 2023/05/22.
//

import SwiftUI

struct the_first_skin_View: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.cyan, .black]), startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        ZStack{
                            Color.gray
                                .ignoresSafeArea().frame(width: 180)
                            VStack{
                                Text("スキン").font(.system(size: 50)).fontWeight(.black).foregroundColor(.white)
                                Spacer()
                                Button(action: {
                                    print("tap buton")
                                }) {
                                    Text("服装").frame(width: 100, height: 50).font(.largeTitle).fontWeight(.black)
                                }
                                .padding()
                                .accentColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                                .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                                Spacer()
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct the_first_skin_View_Previews: PreviewProvider {
    static var previews: some View {
        the_first_skin_View()
    }
}
