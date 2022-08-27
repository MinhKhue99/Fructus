//
//  FruitCardView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 27/08/2022.
//

import SwiftUI

struct FruitCardView: View {

    // MARK: - PROPERTY
    var fruit: Fruit
    @State private var isAnimating: Bool = false

    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // MARK: - IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.5)
                // MARK: - TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)

                // MARK: - HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)

                // MARK: - BUTTON
                StartButtonView()

            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
