//
//  Register.swift
//  DrugStore
//
//  Created by Air 19 on 14/3/24.
//

import SwiftUI

struct Register: View {
    @State private var nombre = ""
    @State private var direccion = ""
    @State private var edad = ""
    @State private var sexo = ""
    
    var index: Int
        @Binding var selectedOption: Int
        var option: String
    var body: some View {
        TextField("Nombre completo", text: $nombre)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 400)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding()
        
        TextField("Direccion", text: $direccion)
            .padding()
            .foregroundColor(.cyan)
            .frame(width: 400)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding()
        
        
        HStack{
            TextField("Edad", text: $edad)
                .padding()
                .foregroundColor(.cyan)
                .frame(width: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.cyan, lineWidth: 2)
                    )
                    .padding()
            
            Button(action: {
                        selectedOption = index
                    }) {
                        HStack {
                            Image(systemName: selectedOption == index ? "largecircle.fill.circle" : "circle")
                                .foregroundColor(selectedOption == index ? .cyan : .gray) // Cambiar colores si deseas
                            Text(option)
                        }
                    }
                    .foregroundColor(.primary)
                    .padding(.vertical, 5)
            
        }
    }
    
}

