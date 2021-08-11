//
//  CourseRow.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/11.
//

import SwiftUI

struct CourseRow: View{
    var courses = coursesData
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(){
                ForEach(courses){ item in
                    CourseView(item: item)
                }
                .padding(4)
                
                
            }
            .padding(.top,10)
            .padding(.bottom,10)
            .padding(.leading,10)
        }
        
    }
    
    
    
}


struct CourseRow_preview:PreviewProvider {
    static var previews: some View {
       CourseRow()
    }
}



struct Course: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}



let coursesData = [
   Course(title: "Sysphy入门",
          image: "Illustration1",
          color: Color("background3"),
          shadowColor: Color("backgroundShadow3")),
   Course(title: "“发卡！”",
          image: "Illustration2",
          color: Color("background4"),
          shadowColor: Color("backgroundShadow4")),
   Course(title: "Swift UI Advanced",
          image: "Illustration3",
          color: Color("background5"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Framer Playground",
          image: "Illustration4",
          color: Color("background6"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Flutter for Designers",
          image: "Illustration5",
          color: Color("background7"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]
