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
        let sortedArray = BubbleSort.bubbleSort(dataArray: array)
        self.originalDataLable.text = String(describing: array)
        self.sortingTextView.text = String(describing: sortedArray)

  
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

