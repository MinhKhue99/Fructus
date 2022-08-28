//
//  SettingRowView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 28/08/2022.
//

import SwiftUI

struct SettingRowView: View {

    // MARK: - PROPERTY
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestintion: String? = nil

    // MARK: - BODY
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)

                Spacer()

                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestintion != nil {
                    Link(linkLabel! ,destination: URL(string: "https://\(linkDestintion!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "Minh Khue")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
