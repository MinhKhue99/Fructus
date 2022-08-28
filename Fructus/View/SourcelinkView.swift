//
//  SourcelinkView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 28/08/2022.
//

import SwiftUI

struct SourcelinkView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://wikipdia.com/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourcelinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourcelinkView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
