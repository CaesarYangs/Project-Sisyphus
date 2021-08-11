//
//  CourseView.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/11.
//

import SwiftUI


struct CourseView: View {

    var item = Course(title: "Swift UI Advanced", image: "Illustration1", color: Color(.blue), shadowColor: Color("backgroundShadow3"))
    
   
   var body: some View {
      return VStack(alignment: .leading) {
        Text(item.title)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(14)
            .padding(.top,15)
            .lineLimit(4)
//            .frame(width:170, height:100)

         Spacer()

        Image(item.image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 130, height: 80)
            .padding(.bottom, 30)
            .padding(.leading,20)
            .padding(.trailing,10)
      }
      .frame(width: CGFloat(150), height: CGFloat(215))
      .background(item.color)
      .cornerRadius(20)
      .shadow(radius: 4)
      
//      .shadow(color: item.shadowColor, radius: 20, x: 0, y: 20)
   }
}







struct CourseViewPreview:PreviewProvider {
    static var previews: some View{
        CourseView()
    }
}
