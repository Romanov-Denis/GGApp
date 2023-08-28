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
            Text("Запись")
                .tabItem {
                    VStack {
                        Image(systemName: "list.clipboard.fill")
                        Text("Запись")
                    }
                }
            
            Text("Профиль")
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Профиль")
                    }
                }
               
            
            Text("О нас")
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
