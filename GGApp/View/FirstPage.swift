//
//  FirstPage.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        ZStack {
            Image("inside")
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack (spacing: 60) {
                    Button() {
                        print("Переходим к услуге")
                    } label: {
                        Text("Услуга")
                            .foregroundColor(.orange)
                            .font(.title)
                    }
                    .frame(width: 280,height: 60)
                    .overlay(Capsule().stroke(Color.orange,lineWidth: 5))
                    
                    
                    
                    
                    Button() {
                        print("Переходим к сотрудникам")
                    } label: {
                        Text("Сотрудники")
                            .foregroundColor(.orange)
                            .font(.title)
                    }
                    .frame(width: 280,height: 60)
                    .overlay(Capsule().stroke(Color.orange,lineWidth: 5))
                    
                    
                    Button() {
                        print("Переходим к дате и времени")
                    } label: {
                        Text("Дата и время")
                            .foregroundColor(.orange)
                            .font(.title)
                    }
                    .frame(width: 280,height: 60)
                    .overlay(Capsule().stroke(Color.orange,lineWidth: 5))
                }
                
            }
        }
    }
}





struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
