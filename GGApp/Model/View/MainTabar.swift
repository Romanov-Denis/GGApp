//
//  ContentView.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI
import CoreData

struct MainTabar: View {

    @State private var selection: String = "Запись"
    
    var body: some View {
        TabView(selection: $selection) {
            
            FirstPage()
                .tabItem {
                    VStack {
                        Image(systemName: "list.clipboard.fill")
                        Text("Запись")
                    }
                    
                }
            
            
            RegisterPage()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Профиль")
                    }
                }
            
            AboutUsView()
                .tabItem {
                    VStack {
                        Image(systemName: "guaranisign.circle.fill")
                        Text("О нас")
                    }
                }
            }
        }
    }

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabar()
    }
}
