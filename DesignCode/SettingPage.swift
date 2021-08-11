//
//  SettingPage.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/9.
//

import SwiftUI

struct settingpage: View {
    @Binding var showSettingModel:Bool
    var body: some View {
        VStack {
            NavigationView{
                VStack(alignment: .leading){
                    Rectangle()
                        .frame(width: 50, height: 3, alignment: .leading)
                        .cornerRadius(8)
                        .foregroundColor(.accentColor)
                        .padding(.leading,20)
                    Form{
                        Section(header: Text("视图")){
                            Text("Placeholder")
                                .font(.body)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Button")
                            })
                        }
                        Section(header: Text("Placeholder")){
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                        }
                        Section(header: Text("Placeholder")){
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                        }
                        Section(header: Text("Placeholder")){
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                        }
                        Section(header: Text("Placeholder")){
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                            Text("Placeholder")
                        }
                    }
                }
                .navigationBarTitle("设置", displayMode: .automatic)
                .navigationBarItems(leading:
                    Button(action: {
                            showSettingModel.toggle()
                        
                    }, label: {
                    Image(systemName: "chevron.down")
                }))
            }
        }
        
    }
}

struct settingpage_Previews: PreviewProvider {
    static var previews: some View {
        settingpage(showSettingModel: .constant(true))
    }
}
