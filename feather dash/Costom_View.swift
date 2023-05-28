//
//  Costom_View.swift
//  feather dash
//
//  Created by kaito on 2023/05/23.
//

import SwiftUI

struct Costom_View: View {
    @Environment(\.dismiss) var dismiss
    private let stapleFoods = ["スキン", "WING(羽)"]
    @State private var selectedIndex = 0
    
    init() {
        let font = UIFont(name: "AvenirNext-Medium", size: 16)!
        let foregroundColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 0.5)
        let backgroundColor = UIColor(white: 0.95, alpha: 0.5)
        
        // 選択中のセグメントの色
        UISegmentedControl.appearance().selectedSegmentTintColor = foregroundColor
        
        // 背景色
        UISegmentedControl.appearance().backgroundColor = backgroundColor
        
        // 通常時のフォントと前景色
        UISegmentedControl.appearance().setTitleTextAttributes([
            .font: font,
            .foregroundColor: foregroundColor,
        ], for: .normal)
        
        // 選択時のフォントと前景色
        UISegmentedControl.appearance().setTitleTextAttributes([
            .font: font,
            .foregroundColor: UIColor.white,
        ], for: .selected)
    }
    
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
                                        HStack{
                                            Text("跳躍").fontWeight(.black)
                                            ProgressView(value: Double(player_status["explosive_power"] as! Int) / 1000).frame(width: 150)
                                        }
                                        HStack{
                                            Text("耐久").fontWeight(.black)
                                            ProgressView(value: Double(player_status["physical strength"] as! Int) / 1000).frame(width: 150)
                                        }
                                        HStack{
                                            Text("体力").fontWeight(.black)
                                            ProgressView(value: Double(player_status["durability"] as! Int) / 1000).frame(width: 150)
                                        }
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
                    ZStack{
                        Color.gray
                            .ignoresSafeArea().frame(width:375, height: 350).cornerRadius(10)
                        HStack{
                            Spacer()
                            Spacer()
                            GeometryReader { geometry in
                                Picker("", selection: self.$selectedIndex) {
                                    ForEach(0..<self.stapleFoods.count) { index in
                                        Text(self.stapleFoods[index])
                                            .tag(index)
                                    }
                                }
                                .pickerStyle(SegmentedPickerStyle())
                                .frame(width: 380)
                            }
                        }
                        //スキン
                        ZStack{
                            if selectedIndex == 0{
                                VStack{
                                    Text("スキン").font(.largeTitle).fontWeight(.black)
                                    HStack{
                                        LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                            .ignoresSafeArea().frame(width: 65, height: 120).cornerRadius(10).overlay(
                                                Button(action: {
                                                    
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                }
                                                    .padding(12)
                                                    .background(Color(UIColor.systemIndigo))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8))
                                        
                                        LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                            .ignoresSafeArea().frame(width: 65, height: 120).cornerRadius(10).overlay(
                                                Button(action: {
                                                    
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                }
                                                    .padding(12)
                                                    .background(Color(UIColor.systemIndigo))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8))
                                        
                                        LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                            .ignoresSafeArea().frame(width: 65, height: 120).cornerRadius(10).overlay(
                                                Button(action: {
                                                    
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                }
                                                    .padding(12)
                                                    .background(Color(UIColor.systemIndigo))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8))
                                        
                                        LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                            .ignoresSafeArea().frame(width: 65, height: 120).cornerRadius(10).overlay(
                                                Button(action: {
                                                    
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                }
                                                    .padding(12)
                                                    .background(Color(UIColor.systemIndigo))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8))
                                        
                                        LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                                            .ignoresSafeArea().frame(width: 65, height: 120).cornerRadius(10).overlay(
                                                Button(action: {
                                                    
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                }
                                                    .padding(12)
                                                    .background(Color(UIColor.systemIndigo))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8))
                                    }
                                }
                            }
                            else if selectedIndex == 1{
                                VStack{
                                    Text("WING(羽)").font(.largeTitle).fontWeight(.black)
                                    VStack{
                                        HStack{
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                        }
                                        HStack{
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                            LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                                                .ignoresSafeArea().frame(width: 65, height: 110).cornerRadius(10).overlay(
                                                    Button(action: {
                                                        
                                                    }) {
                                                        Image(systemName: "plus.circle")
                                                    }
                                                        .padding(12)
                                                        .background(Color(UIColor.systemIndigo))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(8))
                                        }
                                    }
                                }
                            }
                        }
                    }
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
