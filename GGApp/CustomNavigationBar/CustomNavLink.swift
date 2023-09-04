//
//  CustomNavLink.swift
//  GGApp
//
//  Created by Денис Романов on 2/9/2566 BE.
//

import SwiftUI


struct CustomNavLink<Label:View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    
    var body: some View {
        NavigationLink {
            CustomNavigationBarContainer {
                destination
            }
            .navigationBarHidden(true)
        } label: {
            label
        }
    }
}

struct CustomNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            CustomNavLink(destination: Text("Destination")) {
                Text("Next page")
            }
        }
    }
}
