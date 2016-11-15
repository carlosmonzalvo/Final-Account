//
//  Euclides.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class Euclides{
    class func eFunction(aU: Int!, bU: Int!)-> Int{
        var a: Int = aU
        var b: Int = bU
        var r,c,mcd: Int!
        
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
        
        if (a == 0){
            mcd = b;
        }
        else{
            mcd = a;
        }
        return mcd;
    }
}
