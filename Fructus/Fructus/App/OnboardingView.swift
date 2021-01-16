//
//  OnboardingView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitData
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits){ item in
                FruitCardView(fruit: item)
            }//LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
