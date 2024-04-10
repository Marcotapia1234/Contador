//
//  Circulo.swift
//  Contador
//
//  Created by Marco on 10/4/24.
//

import SwiftUI

struct Circulo: View {
    @Binding var counter : Int
    var color : Color
    var body: some View {
        Button(action:{
            self.counter += 1
        }){
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .overlay(
            
            Text("\(counter)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            )
        }
        
    }
}

struct Circulo_Previews: PreviewProvider {
    static var previews: some View {
        Circulo(counter: .constant(1), color: .red)
    }
}
