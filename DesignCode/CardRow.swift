//
//  CardView.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/6.
//

import SwiftUI

struct CardRow: View{
   
    var cards = cardData
    
    var body: some View{
        VStack(alignment: .leading,content: {
//            Text("Cards")
//                .font(.title2)
//               .fontWeight(.heavy)
//               .padding(.leading, 30)
//
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(){
                    ForEach(cards){ item in
                        CardView(item: item)
                    }
                    .padding(8)
                    
                }
                .padding(.leading,8)
                .padding(.trailing,8)
                .padding(.top,10)
                .padding(.bottom,10)
//                .padding(.leading)
                
                
            }
        })
    }
    
    
    
}


//struct CardRow_preview:PreviewProvider {
//    static var previews: some View {
//       CardRow()
//    }
//}



struct Card:Identifiable{
    var id = UUID()
    var title: String
    var subtitle: String
    var textcolor: String
    var backgroundcolor: String
    var image: String
    //var image: String
    
    
    
}

let cardData = [
    Card(title: "SwiftUI", subtitle: "Level 1", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "Python",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "Spring",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "PHP", subtitle: "Initial Learning",textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "Redis", subtitle: "",textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "English improvement", subtitle: "IELTS intro",textcolor: "White", backgroundcolor: "CardBasicColor", image: "Background"),
    Card(title: "Vue.js",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "Node.js",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "MongoDB",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
    Card(title: "Hadoop Spark",subtitle: "", textcolor: "White", backgroundcolor: "GreyBlack", image: "Background"),
]
