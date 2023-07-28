//
//  ContentViewModelTests.swift
//  BMICalculatorTests
//
//  Created by Tatiana Carvajal on 26/07/23.
//


import XCTest
@testable import BMICalculator

final class ContentViewModelTests: XCTestCase {
    
    
    func testEmptyString() {
        
        //Given
        let viewModel = ContentViewModel()
        viewModel.weight = ""
        viewModel.height = ""

        //When
        viewModel.buttonAction()

        //Then
        XCTAssertTrue(viewModel.invalidAlert)
        XCTAssertFalse(viewModel.showAlert)
         
    }
    
    func testUsingLetters() {
        
        //Given
        let viewModel = ContentViewModel()
        viewModel.weight = "lfdhf"
        viewModel.height = "slfdsf"

        //When
        viewModel.buttonAction()

        //Then
        XCTAssertTrue(viewModel.invalidAlert)
        XCTAssertFalse(viewModel.showAlert)
         
    }
    
    func testUsingNumbers() {
        
        //Given
        let viewModel = ContentViewModel()
        viewModel.weight = "50"
        viewModel.height = "1.63"
        
        //When
        viewModel.buttonAction()
        
        //Then
        XCTAssertTrue(viewModel.showAlert)
        XCTAssertFalse(viewModel.invalidAlert)
         
    }
}
