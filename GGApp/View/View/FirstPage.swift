//
//  FirstPage.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI

struct FirstPage: View {
    
    @State private var isReady = false
    
    
    var body: some View {
        VStack {
            VStack (spacing: 60) {
                NavigationLink (destination: ServisCatalogView()) {
                    Button(action: {
                        print("taped")
                    }) {
                        Text("Услуга")
                            .foregroundColor(.black)
                            .font(.title3.bold())
                    }
                    .frame(width: 280,height: 60)
                    .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                }
                
                
                
                Button() {
                    print("Переходим к сотруднику")
                } label: {
                    Text("Сотрудник")
                        .foregroundColor(.black)
                        .font(.title3.bold())
                }
                .frame(width: 280,height: 60)
                .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                
                Button() {
                    print("Переходим к дате и времени")
                } label: {
                    Text("Дата и время")
                        .foregroundColor(.black)
                        .font(.title3.bold())
                }
                .frame(width: 280,height: 60)
                .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                
            }
            .frame (maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("back").blur(radius: 10))
        }
        
    }
}
        
        

    
    struct FirstPage_Previews: PreviewProvider {
        static var previews: some View {
            FirstPage()
        }
    }
