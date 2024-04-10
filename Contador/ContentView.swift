//
//  ContentView.swift
//  Contador
//
//  Created by Marco on 10/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @ State private var counterGreen = 0
    @ State private var counterBlue = 0
    @ State private var counterRed = 0
    
    var body: some View {
        VStack{
            Text("\(counterGreen + counterBlue + counterRed)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
            
            HStack{
                
               Circulo(counter: $counterGreen, color: .green)
               Circulo(counter: $counterBlue, color: .blue)
               Circulo(counter: $counterRed, color: .red)
            }
            
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
