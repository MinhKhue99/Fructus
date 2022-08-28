//
//  ContentView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY
    var fruits: [Fruit] = fruitData
    @State private var isShowingSetting: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSetting) {
                        SettingView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
