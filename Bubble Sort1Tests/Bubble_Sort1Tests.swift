//
//  Bubble_Sort1Tests.swift
//  Bubble Sort1Tests
//
//  Created by Roman Bezpalov on 30.04.18.
//  Copyright © 2018 Bezpalov i partnery. All rights reserved.
//

import XCTest


class Bubble_Sort1Tests: XCTestCase {
    
    var tenItemArrayResult: Array<Int>?
    var fiftinItemArrayResult: Array<Int>?
    var twentyItemArrayResult: Array<Int>?
    var sixItemArraResult: Array<Int>?
    
    override func setUp() {
        super.setUp()
        tenItemArrayResult = [1,2,3,4,5,6,7,8,9,10]
        fiftinItemArrayResult = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        twentyItemArrayResult = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
        sixItemArraResult = [1,2,3,4,5,6]
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTenItem() {
        let array = [3,6,9,5,2,1,4,7,10,8]
        let tenItemSortArr = BubbleSort.bubbleSort(dataArray: array)
        XCTAssertEqual(tenItemSortArr.0.last, tenItemArrayResult)
    }
    
    func testFiftinItem() {
        let array = [8,3,5,6,1,4,2,7,9,15,10,14,12,13,11]
        let fiftinItemSortArr = BubbleSort.bubbleSort(dataArray: array)
        XCTAssertEqual(fiftinItemSortArr.0.last, fiftinItemArrayResult)
    }
   
    func testTwentyItem() {
        let array = [19,17,16,14,11,13,2,4,1,3,5,12,7,8,6,20,18,9,10,15]
        let twentyItemSortArr = BubbleSort.bubbleSort(dataArray: array)
        XCTAssertEqual(twentyItemSortArr.0.last, twentyItemArrayResult)
        
    }
    

    
    func testSixItem() {
    let array = [1,3,4,5,6]
    let sixItemSortArr = BubbleSort.bubbleSort(dataArray: array)
    if sixItemArraResult != sixItemSortArr.0.last{
        XCTFail("TwentyItem sort failed")
    }
//    else{
//    XCTFail("TwentyItem sort failed")
//        }
    }
}


        

    
    

