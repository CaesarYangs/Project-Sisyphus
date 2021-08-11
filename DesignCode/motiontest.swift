//
//  motiontest.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/5.
//

import SwiftUI

struct motiontest: View {
    @State var show = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.show.toggle()
            }
        }) {
            VStack() {
                Text("Card")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding(.top, show ? 100 : 20)
                
                Text("UI and animations")
                    .foregroundColor(Color(hue: 0.567, saturation: 0.158, brightness: 0.943))
                    .lineLimit(-1)
                
                Spacer()
                
                Text("Hello")
                    .foregroundColor(show ? .black : .white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .animation(.spring())
                
                Text("Card Animation")
                    .foregroundColor(Color(hue: 0.498, saturation: 0.609, brightness: 1.0))
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.bottom, show ? 100 : 20)
                }
                .padding()
                .frame(width: show ? 414 : 300, height: show ? 950 : 300)
                .background(Color.blue)
            }
            .cornerRadius(30)
            .animation(.spring())
            .shadow(radius: 30)
    }
}

#if DEBUG
struct motiontest_Previews : PreviewProvider {
    static var previews: some View {
        motiontest()
    }
}
#endif
