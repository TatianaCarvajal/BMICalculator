//
//  ContentView.swift
//  BMICalculator
//
//  Created by Tatiana Carvajal on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: String = ""
    @State var weight: String = ""
    
    var body: some View {
        
        VStack {
            
            Text("BMI Calculator")
                .font(.largeTitle)
                .bold()
                .padding(.top, 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: 0.57, to: 2.0)
                        .fill(Color.blue.opacity(0.3))
                        .frame(width: 400, height: 220)
                )
            
                .padding(.top, 40)
            
            VStack(alignment: .center) {
                
                Text("Height")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                TextField(" altura", text: $height)
                    .font(.system(size: 22, weight: .semibold, design: .default))
                    .border(Color.blue)
                    .cornerRadius(5)
                    .padding(.horizontal, 70)
                Text("mt")
                    .font(.system(size: 22, weight: .semibold, design: .default))
                
                
                Text("Weight")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                    .padding(.top, 50)
                TextField(" peso", text: $weight).keyboardType(.numberPad)
                    .font(.system(size: 22, weight: .semibold, design: .default))
                    .border(Color.blue)
                    .cornerRadius(5)
                    .padding(.horizontal, 70)
                Text("kg")
                    .font(.system(size: 22, weight: .semibold, design: .default))
                
                Spacer()
                    .padding(.top, 60)
            }
            .padding(.top, 50)
            
            Spacer()
            
            VStack(alignment: .center) {
                
                Button {
                    
                } label: {
                    Text("Calculate")
                        .font(.system(size: 22))
                        .padding(.horizontal, 25)
                }
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .shadow(radius: 9)
                .controlSize(.regular)
                .tint(.blue)
                .foregroundColor(Color.black)
                .buttonBorderShape(.roundedRectangle)
                
            }
            
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0.60, to: 2.0)
                .fill(Color.blue.opacity(0.3))
                .rotationEffect(Angle(degrees: -180))
                .frame(width: 400, height: 245)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
