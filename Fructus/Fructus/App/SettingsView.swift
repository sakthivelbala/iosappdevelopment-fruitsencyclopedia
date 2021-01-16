//
//  SettingsView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false,content: {
                VStack(spacing:20) {
                    //MARK: - SECTION 1
                    GroupBox(label:SettingsLabelView(labelText:"Fructus",labelImage:"info.circle")
                        , content: {
                            Divider().padding(.vertical,4)
                            HStack (alignment: .center, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80,height:80)
                                    .cornerRadius(9)
                                Text("Most fruits are low naturally in soduim fat and calories. None has good taste. If you want you eat it else don't eat it else stare at the fruit shop and walk away.")
                                    .font(.footnote)
                            })
                    })
                    //MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText:"Customization" , labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical,4)
                        Text("If you wish to reset the applicaiton you can toggle the switch below. That way you will see the onboarding screen again and you will have to do all non-sense again")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.secondary)
                            }
                        }).padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                        )
                    })
                    //MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText:"Applcation" , labelImage: "apps.iphone")
                             , content: {
                                SettigsRowView(name:"Developer",content: "Sakthivel Balakrishnan")
                                SettigsRowView(name:"Design",content: "Random person")
                                SettigsRowView(name:"Compatability",content:"iOS14")
                                SettigsRowView(name: "Website",linkLabel: "Developer",linkDestination: "www.sakthi-dev.com")
                    })
                }//:VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                )
                .padding()
            })//:SCROLL
        }//:NAVIGATION
    }
}
//MARK: - PERVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
