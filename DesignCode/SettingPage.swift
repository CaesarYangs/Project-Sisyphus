//
//  SettingPage.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/8/9.
//

import SwiftUI


struct settingpage: View {
    @Binding var showSettingModel:Bool  //Model长弹窗是否显示
    
    @Binding var displayModePicker:Int
    var displayModeOptions = ["跟随系统","浅色","深色"]
    
    
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
                            //深色浅色切换picker
                            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/){
                                Text("显示模式")
                                    .padding(.top)
                                    .padding(.leading,3)
                                    
                                
                                Picker("显示模式", selection: $displayModePicker){
                                    ForEach(0..<displayModeOptions.count) { index in
                                                Text(displayModeOptions[index]).tag(index)
                                            }
                                }
                                .pickerStyle(SegmentedPickerStyle())
                                .padding(.bottom)
                                
                            }
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
        .preferredColorScheme(displayModePicker==0 ? nil : displayModePicker==1 ? .light : .dark)
        
    }
}

//struct settingpage_Previews: PreviewProvider {
//    static var previews: some View {
//        settingpage(showSettingModel: .constant(true), displayModePicker: .constant(2))
//    }
//}
