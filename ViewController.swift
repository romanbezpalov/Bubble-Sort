//
//  ViewController.swift
//  Bubble Sort1
//
//  Created by Roman Bezpalov on 25.04.18.
//  Copyright © 2018 Bezpalov i partnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var originalDataLable: UILabel!
    
    @IBOutlet weak var sortingTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [3,6,9,5,2,1,4,7,10,8]
        self.bubbleSort(dataArray: array)
        self.originalDataLable.text = String(describing: array)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func bubbleSort(dataArray:Array<Int>){
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
       
        self.sortingTextView.text = String(describing: interestingArray) + "\n" + "total\(calculator) times"
    }

}

