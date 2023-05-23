//
//  Costom_View.swift
//  feather dash
//
//  Created by kaito on 2023/05/23.
//

import SwiftUI

struct Costom_View: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                     .ignoresSafeArea()
                VStack{
                    HStack{
                        Button(action: {
                            dismiss()
                        }) {
                            Text("戻る")
                        }
                        .buttonStyle(ArrowButtonStyle())
                        Text("COSTOM").font(.system(size: 50)).fontWeight(.black)
                    }
                    ZStack{
                        Color.gray
                            .ignoresSafeArea().frame(width: 390, height: 300).cornerRadius(20)
                        HStack{
                            Spacer()
                            Spacer()
                            VStack{
                                ZStack{
                                    LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                        .ignoresSafeArea().frame(width: 200, height: 100).cornerRadius(10)
                                    
                                    HStack{
                                        Image("wing1").resizable().scaledToFit().frame(width: 100)
                                        Image("wing2").resizable().scaledToFit().frame(width: 100)
                                    }
                                }
                                ZStack{
                                    LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                        .ignoresSafeArea().frame(width: 200, height: 150).cornerRadius(10)
                                    
                                    VStack{
                                        Text("WING STATES").fontWeight(.black).font(.title2)
                                    }
                                }
                            }
                            Spacer()
                            ZStack{
                                Color.white
                                    .ignoresSafeArea().frame(width: 150, height: 250).cornerRadius(50)
                            }.padding()
                        }
                    }
                    Spacer()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        let xOffset = rect.size.width * 0.07
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width - xOffset, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height / 2))
        path.addLine(to: CGPoint(x: rect.size.width - xOffset, y: rect.size.height))
        path.addLine(to: CGPoint(x: 0, y: rect.size.height))
        path.addLine(to: CGPoint(x: xOffset, y: rect.size.height / 2))
        path.closeSubpath()
        return path
    }
}
struct ArrowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20, weight:.bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal,50)
            .padding(5)
            .background(
                ArrowShape()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.blue.opacity(0.4)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
            .shadow(color:.black, radius: configuration.isPressed ? 2 : 4)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct Costom_View_Previews: PreviewProvider {
    static var previews: some View {
        Costom_View()
    }
}
