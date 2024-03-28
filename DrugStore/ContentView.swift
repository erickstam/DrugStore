//
//  ContentView.swift
//  DrugStore
//
//  Created by Air 19 on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Stack del titulo
        VStack{
            Text("Drug Store.")
                .foregroundStyle(.cyan)
                .font(.system(size: 40))
                .bold()
                .padding(.top, 40)
            Text("Mas cerca de ti.")
                .foregroundStyle(.cyan)
                .font(.system(size: 14))
            ZStack{
                Image("farmacy")
                    .resizable()
                    .frame(width: 350, height: 260)
                    .padding(.top, 50)
                    .padding(.top, -60)
            }
            
            
        }
        
        
        //Botones
        VStack{
            
            Button(action: {
                
            }, label: {
                Text("Iniciar Sesion")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: 300)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    .padding(.top, -80)
                    
            })
            Text("¿Aun no tienes una cuenta?")
                .foregroundColor(Color.cyan)
            Button(action: {
                
            }, label: {
                Text("Registrate")
                    .font(.headline)
                    .foregroundColor(.cyan)
                    .frame(height: 55)
                    .frame(maxWidth: 300)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.cyan, lineWidth: 2)
                            )
                    
            })
            Button(action: {
                
            }, label: {
                Image("google")
                    .font(.headline)
                    .foregroundColor(.cyan)
                    .frame(height: 55)
                    .frame(maxWidth: 300)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.cyan, lineWidth: 2)
                            )
                    
            })
            
        }
        .padding(.top, 80)
           
    }
}

#Preview {
    ContentView()
}
