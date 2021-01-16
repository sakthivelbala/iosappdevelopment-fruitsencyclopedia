//
//  ContentView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State var isShowingSettings:Bool = false
    var fruits:[Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }//:LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings=true
            }){
                Image(systemName: "slider.horizontal.3")
            }//: BUTTON
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
        }//: NAVIGATION
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
