//
//  BarbersModel.swift
//  GGApp
//
//  Created by Денис Романов on 29/8/2566 BE.
//

import Foundation

class CatalogViewModel : ObservableObject {
    
    static let shared = CatalogViewModel()
    
    
    var favorite = [ Servis(id: "1",
                           name: "Стрижка машинкой",
                           image: "Not found", price: "1400 Р",
                           discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                    Servis(id: "2",
                           name: "Стрижка ножницами",
                           image: "Not found", price: "1600 Р",
                           discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                    Servis(id: "3",
                           name: "Стрижка бороды",
                           image: "Not found", price: "1000 Р",
                           discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол")
                    
    ]
    
    
    var servis = [ Servis(id: "1",
                          name: "Стрижка машинкой",
                          image: "Not found", price: "1400 Р",
                          discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                   Servis(id: "2",
                          name: "Стрижка ножницами",
                          image: "Not found", price: "1600 Р",
                          discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                   Servis(id: "3",
                          name: "Стрижка бороды",
                          image: "Not found", price: "1000 Р",
                          discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                   Servis(id: "4",
                          name: "Стрижка бороды",
                          image: "Not found", price: "1000 Р",
                          discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"),
                   Servis(id: "5",
                          name: "Стрижка бороды",
                          image: "Not found", price: "1000 Р",
                          discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол")
                   
   ]
   
    
}
