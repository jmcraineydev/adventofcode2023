//
//  Day00ViewModel.swift
//
//
//  Created by JASON MCRAINEY on 2023/12/03.
//

import SwiftUI

final class Day00ViewModel: ObservableObject {
   
    @Published var totalSum: Int = 0
    @Published var haveArrayOfNumber: Bool = false
    @Published var arrayOfInts: [Int] = []
    
    var givenInput = GivenInput()
    
    
    func processStrings() -> [Int]{
        //let givenStrings: [String] = ["1abc2", "pqr3stu8vwx", "a1b2c3d4e5f", "treb7uchet"]
        var resultArray: [Int] = []
        for string in givenInput.givenArray {
           let number = getCalibrationValue(code: string)
            print(number)
            resultArray.append(number)
        }
        return resultArray
    }
    
    func sumTotalNumbers() {
        var sum = 0
        
        for int in arrayOfInts {
            sum += int
        }
        totalSum = sum
    }
    
    func createArrayOfInts() {
        if !haveArrayOfNumber {
            let tempArray = processStrings()
            for int in tempArray {
                arrayOfInts.append(int)
            }
            sumTotalNumbers()
            haveArrayOfNumber = true
        }
    }
 
}

func getCalibrationValue(code: String) -> Int{
    var charDigit1: Character = "A"
    var charDigit2: Character = "B"
    
    for char in code {
        print("Is Char a Number: \(char.isNumber)")
        if char.isNumber {
            if charDigit1 == "A" {
                charDigit1 = char
                print(charDigit1)
            }
        }
    }
    
    for char in code.reversed() {
        print("Is Reverse Char a Number: \(char.isNumber)")
        if char.isNumber {
            if charDigit2 == "B" {
                charDigit2 = char
                print(charDigit2)
            }
        }
    }
    
    let digitString: String = "\(String(charDigit1))\(String(charDigit2))"
    print("DigitString: \(digitString)")
    return Int(digitString) ?? 00
    
    
}
