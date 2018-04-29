//
//  BubbleSort.swift
//  Bubble Sort1
//
//  Created by Roman Bezpalov on 29.04.18.
//  Copyright © 2018 Bezpalov i partnery. All rights reserved.
//

import Foundation


class BubbleSort {
    
    static func bubbleSort(dataArray:Array<Int>) -> (Array<Array<Int>>,Int) {
        
            var interestingArray = [dataArray]
            var calculator = 0
            var numberArray = dataArray
            let count:Int = numberArray.count
            for i in 0..<count - 1 {
                for j in 0..<count - 1 - i {
                    calculator = calculator-1
                    var tempoObj = numberArray[j]
                    if (numberArray[j]) > numberArray[j+1] {
                        tempoObj = numberArray[j+1]
                        numberArray[j+1] = numberArray[j]
                        numberArray[j] = tempoObj
                    }

                        interestingArray.append(numberArray)
                }
            }
        return (interestingArray,calculator)
        
    }
}
