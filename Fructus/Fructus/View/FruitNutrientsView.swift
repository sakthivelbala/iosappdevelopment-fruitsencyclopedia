//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    let nutrients:[String] = ["Enerty","Sugar","Fat","Proteins","Vitamins","Minerals"]
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100g") {
                Divider().padding(.vertical,2)
                ForEach(0..<nutrients.count,id:\.self){item in
                    HStack{
                        Group {                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//:HSTACK
                }
            }
        }//: BOX
    }
}
//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
