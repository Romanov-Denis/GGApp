//
//  BarberViewModel.swift
//  GGApp
//
//  Created by Денис Романов on 30/8/2566 BE.
//

import Foundation


class BarberViewModel: ObservableObject {
    
    static let shared = BarberViewModel()
    
    
    
    var barber = [ Barber(id: "1",
                          name: "Алик",
                          rang: "Top barber",
                          description: "Рассказ про Алика",
                          image: "Alik"),
                   Barber(id: "2",
                          name: "Араик",
                          rang: "Top barber",
                          description: "Рассказ про Араика",
                          image: "Araik"),
                   Barber(id: "3",
                          name: "Арсений",
                          rang: "Top barber",
                          description: "Рассказ про Арсения",
                          image: "Arseniy"),
                   Barber(id: "4",
                          name: "Арман",
                          rang: "Top barber",
                          description: "Рассказ про Армана",
                          image: "Arman"),
                   Barber(id: "5",
                          name: "Александр",
                          rang: "Top barber",
                          description: "Рассказ про Александра",
                          image: "Alex")
    ]
}
