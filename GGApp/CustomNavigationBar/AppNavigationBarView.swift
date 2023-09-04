//
//  AppNavigationBarView.swift
//  GGApp
//
//  Created by Денис Романов on 2/9/2566 BE.
//

import SwiftUI

struct AppNavigationBarView: View {
    var body: some View {
        defaultNavigationView
    }
}

struct AppNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        
        CustomNavView {
            ZStack {
                Color.gray.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Destination")
                    .customNavigationTitle("Second page")
                    .customNavigationSubtitle("Second subtitle")
                ) {
                    Text("Navigate")
                }
            }
            .customNavigationTitle("Custom title")
            .customNavBarBackButtonHidden(true)
        }
    }
}



extension AppNavigationBarView {
    private var defaultNavigationView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination: Text("Describtion"),
                    label: {
                    Text("Navigate")
                })
            }
        }
    }
}
