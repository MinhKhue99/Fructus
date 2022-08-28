//
//  OnBoardingView .swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 27/08/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits: [Fruit] = fruitData
    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView__Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitData)
    }
}
