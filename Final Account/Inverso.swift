//
//  Inverso.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class Inverso{
    
    var anterior : Int!
    var congruente: [Int]!
    var inverso: [Int]!
    var mcd: [Int]!
    var ban = 1.0
    var m = 0
    var n = 2
    var i = 1
    
    
    class func ejecutarAlgoritmo(a: Int, b: Int){
        
        
    }
    
    private func euclides(aU: Int, bU: Int) -> Int{
        var r: Int!
        var c: Int!
        var mcd: Int!
        var a = aU
        var b = bU
        
        repeat{
            if (a != 0 && b != 0){
                c = a / b;
                r = a % b;
            }
            if(a == ((b * c) + r)){
                a = b;
                b = r;
            }
        }while(a != 0 && b != 0);
        
        if(a==0){
            mcd=b;
        }
        else{
            mcd=a;
        }
        
        return mcd;
        
    }
}
