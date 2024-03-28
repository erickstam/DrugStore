//
//  SplashScreenView.swift
//  DrugStore
//
//  Created by Air 19 on 4/3/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            ContentView()
        }else{
            VStack{
                VStack{
                    Text("Drug Store")
                        .foregroundStyle(.cyan)
                        .font(.system(size: 60))
                        .bold()
                    Text("Mas cerca de ti.")
                        .foregroundStyle(.cyan)
                        .font(.system(size: 24))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }

        }
    }
}

#Preview {
    SplashScreenView()
}
