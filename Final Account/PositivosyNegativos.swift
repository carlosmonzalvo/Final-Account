//
//  PositivosyNegativos.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class PositivosyNegativos {
    class func ejecutarCodigo(aU: Int, bU: Int)->[[Int]]?{
        var contador = 0
        var t = -1
        var a, b, c, x: Int
        var congruentesNegativos = [0,0,0,0,0]
        var congruentesPositivos = [0,0,0,0,0]
        a = aU
        b = bU
        
        if(b < 0){
            print("Estas chato, b no puede ser negativo\n" );
            return nil
        }
        repeat{
            x = a + b * t
            if(x < 0){
                t += 1;
            }else{
                contador += 1;
                t += 1;
                print("valor de x positivo = %i\n",x);
            }
        }while(contador<5);//do para los positivos
        t = -1;contador=0;
        repeat{
            x=a+b*t;
            if(x>0){
                t -= 1;
            }else{
                contador += 1;
                t -= 1;
                print("valor de x negativo = %i\n",x);
            }
        }while(contador<5);//do para los negativos
        
        return [congruentesPositivos, congruentesNegativos]
        
        
    }
}


