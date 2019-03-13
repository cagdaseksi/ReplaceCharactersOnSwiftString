//
//  ViewController.swift
//  ReplaceCharacters
//
//  Created by MAC on 13.03.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1. way
        let myString = "This is my string"
        let newString = myString.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
        
        print(newString)
        //This+is+my+string
        
        //2.
        let newString2 = myString.replacingOccurrences(of: " ", with: "+")
        print(newString2)
        //This+is+my+string
        
        //3.
        let strArray = myString.components(separatedBy: " ")
        let resultString = strArray.joined(separator: "+")
        print(resultString)
        //This+is+my+string
        
        //4.
        let replaced = String(myString.map( { $0 == " " ? "+" : $0 } ))
        print(replaced)
        //This+is+my+string
    }


}

