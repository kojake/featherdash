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
    @State var Isthepowermeterfinished = false
    let timer = Timer.publish(every: 0.005, on: .main, in: .common).autoconnect()
    //どれだけの非教理飛ばすか
    @State var Flying_distance = 0
    @State var count = 0
    
    var body: some View {
        NavigationView{
            VStack{
                Text("\(count)m").font(.system(size: 60, weight: .black, design: .default))
                Spacer()
                if Isthepowermeterfinished == true{
                    Image("fether_test_skin").resizable().scaledToFit().frame(width: 200, height: 200)
                }
                HStack{
                    HStack {
                        if Isthepowermeterfinished == false{
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
                                    Isthepowermeterfinished = true
                                    distance_calculation()
                                    count_start()
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
                        else{
                            
                        }
                    }
                    Spacer()
                }.onReceive(timer) { _ in
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
            }
        }.navigationBarBackButtonHidden(true)
    }
    func distance_calculation(){
        let calculation_law = (player_status["explosive_power"] as! Int * Int(power))
        current_altitude = calculation_law * -1
    }
    func count_start(){
        @State var count_speed = 0.01
        var timer: Timer? = nil
        timer = Timer.scheduledTimer(withTimeInterval: count_speed, repeats: true) { _ in
            count += 1
            if count == current_altitude{
                timer?.invalidate()
            }
        }
    }
}
struct main_View_Previews: PreviewProvider {
    static var previews: some View {
        main_View()
    }
}
