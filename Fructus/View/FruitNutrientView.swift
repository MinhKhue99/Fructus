//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 28/08/2022.
//

import SwiftUI

struct FruitNutrientView: View {
    // MARK: - PROPERTY
    var fruit: Fruit
    let nutrients: [String] = [
        "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    // MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) {item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle.fill")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
