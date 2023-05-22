//
//  ContentView.swift
//  feather dash
//
//  Created by kaito on 2023/05/17.
//

import SwiftUI

struct home: View {
    var body: some View {
        VStack {
            Text("featherdash").font(.system(size: 100, weight: .black, design: .default))
            
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                    }) {
                        Image("home_button_design")
                    }
                    Button(action: {
                        
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
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
