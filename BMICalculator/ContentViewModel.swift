//
//  ContentViewModel.swift
//  BMICalculator
//
//  Created by Tatiana Carvajal on 25/07/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var height: String = ""
    @Published var weight: String = ""
    @Published var result: Double = 0
    @Published var showAlert = false
    @Published var invalidAlert = false
    
    
    func buttonAction() {
        guard let weight = Double(weight),
              weight > 0,
              let height = Double(height),
              height > 0
        else {
            invalidAlert = true
            return
        }
        
        result = weight / pow(height,2)
        showAlert = true
    }
}
