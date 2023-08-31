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
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 300, height: 150, alignment: .top)
                    .padding()
                Spacer()
                VStack {
                    VStack (spacing: 40) {
                        NavigationLink(destination: ServisCatalogView()) {
                            Text("Услуги")
                                .foregroundColor(.black)
                                .font(.title3.bold())
                        }
                        .frame(width: 280,height: 60)
                        .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                        

                        NavigationLink(destination: EmploeeView()) {
                                Text("Сотрудник")
                                    .foregroundColor(.black)
                                    .font(.title3.bold())
                            }
                        .frame(width: 280,height: 60)
                        .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                        
                        NavigationLink(destination: CalendarView()) {
                                Text("Дата и время")
                                    .foregroundColor(.black)
                                    .font(.title3.bold())
                            }
                        .frame(width: 280,height: 60)
                        .overlay(Capsule().stroke(Color.black,lineWidth: 5))
                    }
                }
                .offset(y: -50)
                Spacer()
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
