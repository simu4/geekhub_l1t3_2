//
//  main.swift
//  Lesson1Task3_2
//
//  Created by Kirill Netavskiy on 24.10.16.
//  Copyright © 2016 Kirill Netavskiy. All rights reserved.
//


import Foundation
var a :  String
var b : Double
var c : Double
var i : Int
var j : Int
var result : Double
var Arr1 : [String]

func counter(Array Arr: [String]) -> [String]{
    var Arr = Arr
    var b : Double
    var c : Double
    var i : Int
    var result : Double
    while Arr.count != 1 {
        
        if Arr.index(of: "*") != nil{
            i = Arr.index(of: "*")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b*c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "/") != nil{
            i = Arr.index(of: "/")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b/c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "+") != nil{
            i = Arr.index(of: "+")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b+c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "-") != nil{
            i = Arr.index(of: "-")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b-c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        
        
    }
    return Arr
}



print(" Введите уравнение в формате \n x + y * z ")
a = readLine()!
if a.contains("("){

    var Arr = a.components(separatedBy: " ")
    
 Arr1 = []
 
 
 while Arr.contains(")") {
    if Arr.index(of: "(") != nil && Arr.index(of: ")") != nil{
        i = Arr.index(of: "(")! + 1
        j = Arr.index(of: ")")! - 1
        
        for gap in Arr[i...j]{
 
            Arr1 += [gap]
 
        }
        print(Arr1)
        let gap = Arr.index(of: "(")!
        let gapCounter = counter(Array: Arr1)
        Arr[gap] = String(describing: gapCounter)
        j = Arr.index(of: ")")!
        Arr[i...j] = []
        }
    
    }
    

 print(counter(Array: Arr))
}
    

else{
    var Arr1 = a.components(separatedBy: " ")
    print(counter(Array: Arr1))

}
