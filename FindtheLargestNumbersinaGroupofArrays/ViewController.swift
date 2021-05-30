//
//  ViewController.swift
//  FindtheLargestNumbersinaGroupofArrays
//
//  Created by Daniel Washington Ignacio on 30/05/21.
//

/*
 Create a function that takes an array of arrays with numbers. Return a new (single) array with the largest numbers of each.

 Examples

 findLargest([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]) ➞ [7, 90, 2]

 findLargest([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]) ➞ [-34, -2, 7]

 findLargest([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]) ➞ [0.7634, 9.32, 9]
 Notes

 Watch out for negative integers (numbers).
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // print(findLargestNums([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]))
       // print(findLargestNums([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]))
        print(findLargestNums([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]))
    }


    func findLargestNums(_ arr: [[Double]]) -> [Double] {
        var result: [Double] = []
        var value: Double = arr[0].first ?? 00
        for n in arr{
            for m in n{
                if m > value{
                value = m
                }
            }
         result.append(value)
        value = n.first ?? 00
        }
        return result
    }
    
}

