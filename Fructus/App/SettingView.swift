//
//  SettingView.swift
//  Fructus
//
//  Created by Phạm Minh Khuê on 28/08/2022.
//

import SwiftUI

struct SettingView: View {

    // MARK: - PROPERTY
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboading") var isOnboarding: Bool = false

    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {

                    GroupBox(
                        label:
                            SettingLabelView(labelText: "FRUCTUS", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            Text("Most of fruits are naturally low in fat, sodiums and caloies. None have cholesterol. Fruits are source of many essential nutrients, including potassum, dietaryfiber, vitamins and musch more.")
                                .font(.footnote)
                        }
                    }

                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)

                        Text("If you wish, you can restart application by toggingling the switch in this box. By this way,  it starts the boarding process and you can see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .font(.footnote)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }

                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Minh Khue")
                        SettingRowView(name: "Designer", content: "Udemy")
                        SettingRowView(name: "Website", linkLabel: "MK Company", linkDestintion: "facebook.com/minhkhue0902")
                        SettingRowView(name: "SwiftUI", content: "3.0")
                        SettingRowView(name: "Version", content: "1.0.0")
                    }

                }
                .padding()
                .background(
                    Color(UIColor.tertiarySystemBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)
                                  )
                )
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button(action:  {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
            )
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
