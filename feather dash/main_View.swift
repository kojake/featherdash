//
//  main_View.swift
//  feather dash
//
//  Created by kaito on 2023/05/18.
//

import SwiftUI

struct main_View: View {
    @State var current_altitude = 0
    @State private var power: Double = 0.0
    @State private var isButtonDisabled = false
    @State private var isIncreasing = true
    
    let timer = Timer.publish(every: 0.005, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            Text("\(current_altitude)m").font(.system(size: 60, weight: .black, design: .default))
            Spacer()
            HStack{
                HStack {
                    VStack {
                        Text("Power: \(Int(power))").font(.system(size: 30, weight: .black, design: .default))
                            .font(.title)
                        
                        ZStack(alignment: .bottom) {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 20, height: 300)
                            
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: 20, height: CGFloat(power * 3))
                                .animation(.linear(duration: 0.1))
                        }
                        .padding()
                        
                        Button(action: {
                            isButtonDisabled.toggle()
                        }) {
                            Image(systemName: "stop.fill")
                                .bold()
                                .padding()
                                .frame(width: 70, height: 70)
                                .foregroundColor(Color.white)
                                .background(Color.red)
                                .clipShape(Circle())
                        }
                        .disabled(isButtonDisabled)
                    }
                }
                .onReceive(timer) { _ in
                    if isIncreasing {
                        if power < 100 && !isButtonDisabled {
                            power += 1
                        } else if power == 100 {
                            isIncreasing = false
                        }
                    } else {
                        if power > 0 && !isButtonDisabled {
                            power -= 1
                        } else if power == 0 {
                            isIncreasing = true
                        }
                    }
                }
                Spacer()
            }
        }
    }
}
struct main_View_Previews: PreviewProvider {
    static var previews: some View {
        main_View()
    }
}
