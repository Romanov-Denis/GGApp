//
//  CustomNavigationBarView.swift
//  GGApp
//
//  Created by Денис Романов on 2/9/2566 BE.
//

import SwiftUI

struct CustomNavigationBarView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let  showBackButton: Bool
    let  title: String
    let  subtitle: String?
    
    var body: some View {
        HStack {
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
                backButton
                    .opacity(0)
            }
        }
        .padding()
        .foregroundColor(Color.white)
        .font(.headline)
        .background(Color(.black).ignoresSafeArea(edges: .top))
    }
}

struct CustomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavigationBarView(showBackButton: true, title: "Title here", subtitle: "Subtitle here")
            Spacer()
        }
    }
}




extension CustomNavigationBarView {
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
        }
    }
    
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subtitle = subtitle {
                Text(subtitle)
            }
        }
    }
}
