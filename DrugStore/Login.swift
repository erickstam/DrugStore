//
//  Login.swift
//  DrugStore
//
//  Created by Air 19 on 17/3/24.
//

import SwiftUI

struct Login: View {
    @State private var nombre = ""
    @State private var direccion = ""
    var body: some View {
        Image("secury_login")
            .resizable()
            .frame(width: 300,height: 250)
            .padding(.top, -50)
        
        ZStack{
            TextField("Usuario", text: $nombre)
                .padding()
                .foregroundColor(.cyan)
                .frame(width: 350)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.cyan, lineWidth: 2)
                    )
                    .padding()
            
            TextField("Contraseña", text: $direccion)
                .padding()
                .foregroundColor(.cyan)
                .frame(width: 350)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.cyan, lineWidth: 2)
                    )
                    .padding(.top, 180)
              
            
        }
        .padding(.top, -50)
        ZStack{
            Button(action: {
                
            }, label: {
                Text("Ingresar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: 350)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    .padding(.top, -80)
                    
            })
            Button(action: {
                
            }, label: {
                Text("Cancelar")
                    .font(.headline)
                    .foregroundColor(.cyan)
                    .frame(height: 55)
                    .frame(maxWidth: 350)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.cyan, lineWidth: 2)
                            )
                    
            })
            .padding(.top, 50)
        }
        .padding(.top, 80)
    }
    
    
}


#Preview {
    Login()
}
