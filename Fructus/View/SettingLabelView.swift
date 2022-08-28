//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 28/08/2022.
//

import SwiftUI

struct SettingLabelView: View {
    
    // MARK: - PROPERTY
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "FRUTUS", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
