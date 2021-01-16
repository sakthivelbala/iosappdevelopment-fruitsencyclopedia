//
//  ScrollLinkView.swift
//  Fructus
//
//  Created by Sakthivel Balakrishnan on 14/01/21.
//

import SwiftUI

struct ScrollLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia",destination:URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}
struct ScrollLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
