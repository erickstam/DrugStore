//
//  Registro.swift
//  DrugStore
//
//  Created by Air 19 on 24/3/24.
//

import SwiftUI

struct Registro: View {
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var direccion = ""
    @State private var edad = ""
    @State private var sexo = ""
    var body: some View {
        Image("registro")
            .resizable()
            .frame(width: 300,height: 250)
            .padding()
        
        TextField("Nombres", text: $nombre)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding(.top,-20)
        
        TextField("Apellidos", text: $apellido)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding()
        
        
        TextField("Direccion", text: $direccion)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding(.top,-10)
        
       
        
        HStack{
            TextField("Sexo", text: $edad)
                .padding()
                .foregroundColor(.cyan)
                .frame(width: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.cyan, lineWidth: 2)
                    )
                    .padding()
            
            TextField("Edad", text: $edad)
                .padding()
                .foregroundColor(.cyan)
                .frame(width: 100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.cyan, lineWidth: 2)
                    )
                    .padding()
            
            
        }
        TextField("Fecha de Nacimiento", text: $edad)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding()
        HStack{
            Button(action: {
                
            }, label: {
                Text("Cancelar")
                    .font(.headline)
                    .foregroundColor(.cyan)
                    .frame(height: 55)
                    .frame(maxWidth: 170)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.cyan, lineWidth: 2)
                            )
                    
            })
            
            Button(action: {
                
            }, label: {
                Text("Guardar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: 170)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    
            })
        }
        
    }
}

#Preview {
    Registro()
}
