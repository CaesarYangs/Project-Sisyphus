//
//  ContentView.swift
//  Project Sisyphus
//
//  Created by 杨业卿 on 2021/7/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSettingModel = false
    @AppStorage("displayModePicker") var displayModePicker:Int = 0
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    init() {
//        UINavigationBar.appearance().backgroundColor = .systemPink

         UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.init(Color("TextColor")),
                   .font : UIFont(name:"Georgia Bold Italic", size: 40)!]

        // 3.
        UINavigationBar.appearance().titleTextAttributes = [
            .font : UIFont(name: "Georgia Italic", size: 20)!]

    }
        
//    init() {
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//                  UINavigationBar.appearance().shadowImage = UIImage()
//                  UINavigationBar.appearance().isTranslucent = true
//                  UINavigationBar.appearance().tintColor = .clear
//                  UINavigationBar.appearance().backgroundColor = .clear
//    }
    
    var body: some View {
        VStack{
            NavigationView{
                ScrollView(.vertical,showsIndicators: true) {
                    VStack(alignment: .leading){
                        Rectangle()
                            .frame(width: 50, height: 3, alignment: .leading)
                            .cornerRadius(8)
                            .foregroundColor(.accentColor)
                            .padding(.leading,15)
                        
                        
                        Text("Life Cards")
                            .font(.title2)
                            .bold()
                            .padding(.leading)
                            .padding(.top,5)
                        
                        CardRow()
                            .padding(.bottom,10)
                        
                        Text("Events")
                            .font(.title2)
                            .bold()
                            .padding()
                        
                        Spacer()
                        
                        Text("Tutorials")
                            .font(.title2)
                            .bold()
                            .padding(.leading)
                        
                        CourseRow()
                        
                            
                    }
                    .navigationBarTitle("Sisyph", displayMode: .automatic)
                    .navigationBarItems(
                        trailing:
                            HStack{
                                Button(action: {showSettingModel.toggle()}){
                                    Image(systemName: "ellipsis.circle.fill")
                                }.sheet(isPresented: $showSettingModel, content: {
                                    settingpage(showSettingModel: $showSettingModel,displayModePicker: $displayModePicker)
                                })
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "puzzlepiece.fill")
                                })
                            }
                        
                        
                    )
//                    .navigationBarHidden(true)
                    
                }
                
                
                
            }
            .preferredColorScheme(displayModePicker==0 ? nil : displayModePicker==1 ? .light : .dark)           
            
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BackgroundColorStyle: ViewModifier {
    @Environment (\.colorScheme) var colorScheme:ColorScheme
    func body(content: Content) -> some View {
        if colorScheme == .light {
            return content
                .background(Color.black)
        } else {
            return content
                .background(Color.white)
        }
    }
}


