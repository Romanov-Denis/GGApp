//
//  ContentView.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI
import CoreData

struct MainTabar: View {
    
    var body: some View {
        TabView {
            
            FirstPage()
                .tabItem {
                    VStack {
                        Image(systemName: "list.clipboard.fill")
                        Text("Запись")
                    }
                }
                .foregroundColor(Color.black)
            
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
