//
//  SettigsRowView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct SettigsRowView: View {
    //MARK: - PROPRTIES
    var name:String
    var content:String?=nil
    var linkLabel:String?=nil
    var linkDestination:String?=nil
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }

    }
}
//MARK: - PREVIEW
struct SettigsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettigsRowView(name: "Developer", content: "Sakthivel Balakrishnan")
                .previewLayout(.sizeThatFits)
                .padding()
            SettigsRowView(name: "Developer", linkLabel: "Website",linkDestination: "www.sakthi-dev.com")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}
