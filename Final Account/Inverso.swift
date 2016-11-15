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
    
     func ejecutarAlgoritmo(aU: Int!, bU: Int!)-> [[Int]]?{
        var a = aU
        var b = bU
        var anterior : Int!
        var congruente: [Int]! = [0,0,0,0,0,0]
        var inverso: [Int]! = [0,0,0,0,0,0]
        var mcd,ban,m,n,i: Int
        mcd = eFunction(aU: a, bU: b)
        ban = 1
        m = 0
        n = 2
        i = 1
        
        print(mcd)
        if(mcd != 1)
        {
            print("a y b no son primos");
            
            return nil
        }else
        {
            //caso a<b
            if(a! < b!){
                repeat
                {
                    m += 1;
                    if(a! * m - 1 == b!)
                    {
                        ban = 0;
                        inverso[0] = m;
                        congruente[0] = a! * (m) - 1;
                    }else if(a! * (0 - m) - 1 == 0 - b!){
                        ban=0;
                        inverso[0] = 0 - m;
                        congruente[0] = (0 - a!) * (m) - 1;
                    }
                } while (ban == 1);
            } else {
                // caso si a>b multiplicar por el doble
                repeat{
                    m = 0;
                    repeat{
                        m += 1;
                        if (a! * m - 1 == n * b!){
                            ban = 0;
                            inverso[0] = m;
                            congruente[0] = (0 - a!) * (0 - m) - 1;
                        }else if(a! * (0 - m) - 1 == (0 - n) * b!)
                        {
                            ban = 0;
                            inverso[0] = (0 - m);
                            congruente[0] = (0 - a!) * (m) - 1;
                            //m negativa
                        }
                    }while(m <= n);
                    n = n * 2;
                }while(ban == 1);
            }//fin caso a>b
            for i in 0..<5{
                //para los demas valores
                if(i>0){
                    congruente[i] = a! * (inverso[i-1] + congruente[i-1]) - 1;
                    inverso[i] = inverso[i-1]+congruente[i-1];
                }
                print("inverso[%i] = %i congruente con %i \n",i,inverso[i],congruente[i]); // MANDAR A LABRL
            }//fin for
            
        }
        return [inverso, congruente]
        
    }
    
     func eFunction(aU: Int!, bU: Int!)-> Int{
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



