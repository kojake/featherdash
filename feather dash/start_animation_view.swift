//
//  start_animation_view.swift
//  feather dash
//
//  Created by kaito on 2023/05/28.
//

import SwiftUI

struct start_animation_view: View {

    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.white, .cyan]), startPoint: .top, endPoint: .bottom)
                     .ignoresSafeArea()
                VStack {
                    Text("空への行く準備ができたら").font(.system(size: 30)).fontWeight(.black)
                    Text("さあ").font(.system(size: 50)).fontWeight(.black)

                    SlideButtonView()
                        .overlay(
                            Image(systemName: "heart.fill")
                                .foregroundColor(.white)
                        )
                }
            }
        }
    }
}

import SwiftUI

struct SlideButtonView: View {
    @GestureState private var dragState = DragState.inactive
    @State private var slideOffset: CGFloat = 0.0
    @State private var isOn = false

    var body: some View {
        let dragGesture = DragGesture()
            .updating($dragState) { value, dragState, transaction in
                dragState = .dragging(translation: value.translation)
            }
            .onEnded { value in
                let dragThreshold = UIScreen.main.bounds.width / 2.0
                if abs(value.translation.width) > dragThreshold {
                    isOn.toggle()
                }
                slideOffset = isOn ? 100.0 : 0.0
            }

        return ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 50)
                .foregroundColor(isOn ? .green : .gray)

            RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .offset(x: slideOffset, y: 0)
                .animation(.easeInOut)
                .gesture(dragGesture)
        }
    }

    enum DragState {
        case inactive
        case dragging(translation: CGSize)
    }
}

struct start_animation_view_Previews: PreviewProvider {
    static var previews: some View {
        start_animation_view()
    }
}
