//
//  RegisterPage.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI

struct RegisterPage: View {
    
    @State private var isAuth = true
    
    
    @State private var phoneNumber = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var isTabViewShow = false
    
    var body: some View {
            VStack() {
                Image("logo")
                    .resizable()
                    .frame(width: 300, height: 150, alignment: .topLeading)
                    .padding(.vertical, 0.0)
                VStack () {
                    Text(isAuth ? "Авторизация" : "Регистрация")
                        .padding()
                        .font(.title2.bold())
                        .background(Color("half-white"))
                        .cornerRadius(15)
                    VStack {
                        TextField("Номер телефона", text: $phoneNumber)
                            .padding()
                            .background(Color("half-white"))
                            .cornerRadius(15)
                            .padding(8)
                            .padding(.horizontal, 12)
                        
                        SecureField("Пароль", text: $password)
                            .padding()
                            .background(Color("half-white"))
                            .cornerRadius(15)
                            .padding(8)
                            .padding(.horizontal, 12)
                        
                        if !isAuth {
                            SecureField("Повторите пароль", text: $confirmPassword)
                                .padding()
                                .background(Color("half-white"))
                                .cornerRadius(15)
                                .padding(8)
                                .padding(.horizontal, 12)
                        }
                        
                        Button {
                            if isAuth {
                                print("Авторизация")
                                isTabViewShow.toggle()
                            } else {
                                self.phoneNumber = ""
                                self.password = ""
                                self.confirmPassword = ""
                                self.isAuth.toggle()
                            }
                        } label: {
                            Text(isAuth ? "Войти" : "Создать профиль")
                        }
                        .foregroundColor(.black)
                        .font(.title3.bold())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("half-white"))
                        .cornerRadius(15)
                        .padding(8)
                        .padding(.horizontal, 12)
                        
                        Button {
                            isAuth.toggle()
                        } label: {
                            Text(isAuth ? "Впервые у нас?" : "Уже есть аккаунт")
                        }
                        .foregroundColor(.black)
                        .font(.title3.bold())
                        .padding(.horizontal )
                        .frame(maxWidth: .infinity)
                        .cornerRadius(15)
                        .padding(8)
                        .padding(.horizontal, 12)
                        
                        
                    }
                    .padding()
                    .background(Color("half-white"))
                    .cornerRadius(15)
                    .padding()
                }
                
            }
            .frame (maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("back").blur(radius: 10))
            .animation(Animation.easeOut(duration: 0.3), value: isAuth)
            .fullScreenCover(isPresented: $isTabViewShow) {
                FirstPage()
            }
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
