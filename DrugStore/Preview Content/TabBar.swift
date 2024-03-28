//
//  TabBar.swift
//  DrugStore
//
//  Created by Air 19 on 24/3/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack{
            Button(action: {
                //switch
            }, label: {
                VStack(alignment: .center, spacing: 4){
                    Image(systemName: "location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Navegacion")
                }
            })
        }
        .frame(height: 82)
    }
}

#Preview {
    TabBar()
}
