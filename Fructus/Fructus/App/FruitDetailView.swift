//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment: .leading, spacing: 20, content: {
                        //TITLE
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        ScrollLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    })//: VSTACK
                    .padding(.horizontal,50)
                    .frame(maxWidth:640,alignment: .center)
                })//: VSTACK
                .navigationBarHidden(true)
            })//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}
//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
