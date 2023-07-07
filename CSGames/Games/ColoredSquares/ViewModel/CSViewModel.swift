//
//  ColoredSquaresModel.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

class CSViewModel: ObservableObject {
    
    // MARK: - Properties
    
    // MARK: _Size of squarebox
    private let minSize_Squarebox = 100
    private let maxSize_Squarebox = 300
    private let stepSize_Squarebox = 5
    var targetSize_Squarebox = 300
    @Published var size_Squarebox: CGFloat = 300
    
    // MARK: _Number of square per edge (per row)
    private let minNumber_SquaresPerEdge = 1
    private let maxNumber_SquaresPerEdge = 30
    private let stepNumber_SquaresPerEdge = 1
    @Published var number_SquaresPerEdge = 6
    
    // MARK: _Size of square
    @Published var size_Square: CGFloat = 1
    
    // MARK: _Number of updates
    //@Published var numberUpdates_SizeSquarebox = 0
    //@Published var numberUpdates_NumberSquares = 0
    //@Published var numberUpdates_SizeSquare = 0
//    @Published var numberUpdates_Squares = 0
//    @Published var numberUpdates_Square = 0
    
    
    // MARK: - Initializer
    
    init () {
        updateProperties()
    }
    
    
    // MARK: - Methodes (private)
    
    private func updateProperties () {
        size_Squarebox = CGFloat(Int(targetSize_Squarebox / number_SquaresPerEdge) * number_SquaresPerEdge)
        size_Square = size_Squarebox / CGFloat(number_SquaresPerEdge)
        printColoredSquaresInfo()
    }
    
    private func printColoredSquaresInfo () {
        print("Colored Squares Info")
        print("number of squares in squarebox: \(number_SquaresPerEdge * number_SquaresPerEdge)")
        print("number of squares per edge of squarebox: \(number_SquaresPerEdge)")
        print("size of squarebox: \(size_Squarebox)")
        print("size of square: \(size_Square)")
        print("")
    }
    
    
    // MARK: - Methodes (public)

//    // MARK: _Update
//    // Update counters
//    private func update_Squarebox () {
//        numberUpdates_Squares += 1
//        //print("updates_squares: \(numberUpdates_Squares)")
//    }
//    private func update_Square () {
//        numberUpdates_Square += 1
//        //print("updates_square: \(numberUpdates_Square)")
//    }
    
    // MARK: _Reset
    
    /// Resets squares and statistics.
    func reset () {
        reset_squares()
        reset_statistics()
    }
    
    /// Resets number of squares and size of squarebox.
    func reset_squares () {
        targetSize_Squarebox = 300
        size_Squarebox = 300
        number_SquaresPerEdge = 6
        
        updateProperties()
    }
    
    /// Resets number of squares and size of squarebox.
    func reset_statistics () {
//        numberUpdates_SizeSquarebox = 0
//        numberUpdates_NumberSquares = 0
//        numberUpdates_SizeSquare = 0
//        numberUpdates_Squares = 0
//        numberUpdates_Square = 0
    }
    
    
    // MARK: _Change size of squarebox
    /// Increases the size of the squarebox.
    func increaseSize_Squarebox () {
        if targetSize_Squarebox < maxSize_Squarebox {
            targetSize_Squarebox += stepSize_Squarebox
            updateProperties()
        }
    }
    /// Decreases the size of the squarebox.
    func decreaseSize_Squarebox () {
        if targetSize_Squarebox > minSize_Squarebox {
            targetSize_Squarebox -= stepSize_Squarebox
            updateProperties()
        }
    }
    
    
    // MARK: _Change number of squares
    /// Increases the number of squares.
    func increaseNumber_SquaresPerEdge () {
        if number_SquaresPerEdge < maxNumber_SquaresPerEdge {
            number_SquaresPerEdge += stepNumber_SquaresPerEdge
            updateProperties()
        }
    }
    /// Decreases the number of squares.
    func decreaseNumber_SquaresPerEdge () {
        if number_SquaresPerEdge > minNumber_SquaresPerEdge {
            number_SquaresPerEdge -= stepNumber_SquaresPerEdge
            updateProperties()
        }
    }
    
    
    // MARK: _Other
    /// Returns a big and a small randomized angle.
    /// - Parameter range: Range of big angle before randomization.
    /// - Parameter ratio: Ratio between small and  big angle before randomization.
    /// - Returns: Big and small angle.
    func randomAngle (_ range: Int = 10, ratio: Double = 0.3) -> (big: Double, small: Double) {
        
        let valueBig = Double(range / 2)
        let bigAngle = Double.random(in: -valueBig..<valueBig)
        
        let valueSmall = valueBig * ratio
        let smallAngle = Double.random(in: -valueSmall..<valueSmall)
        
        return (bigAngle, smallAngle)
        
    }
    
    
    //---------------------------------------------------------
    // MARK: ViewModel
    
    @Published private(set) var isUpdatedSquarebox = true
    @Published private(set) var isUpdatedSquare = true
    
    func updateSquarebox () {
        isUpdatedSquarebox.toggle()
    }
    func updateSquare () {
        isUpdatedSquare.toggle()
    }
    
    
}

