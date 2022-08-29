//
//  ContentView.swift
//  50 cards challenge
//
//  Created by Arthur Sh on 29.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor: Color{
        return Color(.sRGB,
                     red: Double.random(in: 0..<1),
                     green: Double.random(in: 0..<1),
                     blue: Double.random(in: 0..<1),
                     opacity: 1)
    }
    

    var body: some View {
        GeometryReader{ geo in
        TabView{
                
                    ForEach(0..<51){i in
                        ZStack{
                            
                        Rectangle()
                                .foregroundColor(cardColor)
                                
                                
                            
                                Image(systemName: "\(i).circle")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    
                            
                            
                            
                        }.frame(width: geo.size.width - 50, height: geo.size.height - 100)
                        .cornerRadius(20)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 10, x: -5, y: 5)
                        
                    }
                
        }.tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
        
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
