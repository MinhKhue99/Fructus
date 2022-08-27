//
//  OnBoardingView .swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 27/08/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView__Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
