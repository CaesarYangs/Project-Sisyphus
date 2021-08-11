//
//  CardView.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/6.
//

import SwiftUI

struct CardView:View {
    var item = Card(title: "SwiftUI", subtitle: "Level 1", textcolor: "White",backgroundcolor: "Black",image:"Background")
    
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Text("SysphCard")
                    .foregroundColor(Color(item.textcolor))
                    .font(.headline)
                    .bold()
                Spacer()
                
                if(item.subtitle==""){
                    Text(item.title)
                        .foregroundColor(Color(item.textcolor))
                        .font(.title2)
                        .bold()
                    
                }else{
                    VStack{
                        Text(item.title)
                            .foregroundColor(Color(item.textcolor))
                            .font(.title2)
                            .bold()
                        Text(item.subtitle)
                            .foregroundColor(Color(item.textcolor))
                            .font(.footnote)
                            .bold()
                    }
                }
                
                
                    
            }
            .padding(.top,15)
            .padding(.leading,30)
            .padding(.trailing,30)
            
            
            
            Image(item.image)
                .resizable()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .scaledToFill()
                .clipped()
                .offset(x:5,y: 15)
                
        }
        .frame(width: CGFloat(345), height: CGFloat(217))
        .background(Color(item.backgroundcolor))
        .cornerRadius(13)
        .shadow(radius: 10)
        .contextMenu(ContextMenu(menuItems: {
            /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
        }))
    }
}


struct CardViewPreive:PreviewProvider{
    static var previews: some View {
        CardView()
    }
}






