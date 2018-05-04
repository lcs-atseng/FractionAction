//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
// Test numerator
var numerator = 0
prompt: while 1 == 1 {
    print("Numerator?")
    
    guard let integerNumerator = readLine() else {
        continue
        // check for nil
    }
    
    guard let givenInput = Int(integerNumerator) else {
        continue
    }
    
    if givenInput < 0 {
        continue
    }
    numerator = givenInput
    break
}

print(numerator)

// test denominator
var denominator = 0
prompt: while 1 == 1 {
    print("Denominator?")
    
    guard let denominatorNumber = readLine() else {
        continue
    }
    guard let givenInput = Int(denominatorNumber) else {
        continue
    }
    
    if denominatorNumber < 1 {
        continue
    }
    denominator = denominator
    break
}

print(denominator)

// PROCESS
// Implement the primary logic of the problem here

var quotient = numerator / denumerator
var remainder = numerator % denumerator

if remainder == 0 {
    print("Result is:" , quotient)
} else if denumerator % remainder == 0 {
    let reducedNumerator = 1
    let reducedDenumerator = denumerator / remainder
    //if quotient is 0, dont print
    if quotient > 0 {
        print("\(reducedNumerator)/\(reducedDenumerator)")
        //if quotient is bigger that 0, print it
    } else {
        print("\(quotient)\(reducedNumerator)/\(reducedDenominator)")
    } else {
        var GCF = 1 // not the real GCF
        for i in stride(from: remainder/2, through: 2, by: -1){
            print(1)
        
            if remainder % 1 == 0 && denumerator % i == 0 {
                // now we find out i is the greatest common factor (GCF)
                GCF = i
                break
            }
        }
    }
    
}
// OUTPUT
// Report results to the user here
let finalRemainder = remainder / GCF
let finalDenumerator = denumerator / GCF

// if quotient is 0, don't print
if quotient == 0 {
    print("\(finalRemainder)/\(finalDenominator)")
    //if quotient is not 0, print it
} else {
    print("\(quotient)\(finalRemainder)/\(finalDenominator)")
}


