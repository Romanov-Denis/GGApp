//
//  CustomNavigationBarContainer.swift
//  GGApp
//
//  Created by Денис Романов on 2/9/2566 BE.
//

import SwiftUI


struct CustomNavigationBarContainer<Content: View>: View {
    
    let content: Content
    
    @State private var  showBackButton: Bool = true
    @State private var  title: String = ""
    @State private var  subtitle: String? = nil
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
            CustomNavigationBarView(showBackButton: showBackButton, title: title, subtitle: subtitle)
            content
                .frame(maxWidth: .infinity,maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKey.self) { value in
            self.title = value
        }
        .onPreferenceChange(CustomNavBarSubtitlePreferenceKey.self) { value in
            self.subtitle = value
        }
        .onPreferenceChange(CustomNavBarBackButtonPreferenceKey.self) { value in
            self.showBackButton = !value
        }
    }
}

struct CustomNavigationBarContainer_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarContainer {
            ZStack {
                Color.black.ignoresSafeArea()
                Text("Hello world!")
                    .foregroundColor(.white)
                    .customNavigationTitle("New title")
                    .customNavigationSubtitle("Subtitle")
            }
        }
    }
}
