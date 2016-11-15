//
//  TeoremaChino.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 13/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class TeoremaChino: UIViewController, UITextFieldDelegate{
    //variables, textlabel y botones declarados
    @IBOutlet weak var divisor1: UITextField!
    @IBOutlet weak var divisor2: UITextField!
    @IBOutlet weak var divisor3: UITextField!
    @IBOutlet weak var divisor4: UITextField!
    @IBOutlet weak var divisor5: UITextField!
    
    @IBOutlet weak var residuo1: UITextField!
    @IBOutlet weak var residuo2: UITextField!
    @IBOutlet weak var residuo3: UITextField!
    @IBOutlet weak var residuo4: UITextField!
    @IBOutlet weak var residuo5: UITextField!
    
    @IBOutlet weak var restdoPar: UILabel!
    @IBOutlet weak var restdoGen: UILabel!
    
    @IBOutlet weak var botonRes: UIButton!
    
    var div1,div2,div3,div4,div5: Int!
    var res1,res2,res3,res4,res5: Int!
    
    
    //Inicio del codigo
    override func viewDidLoad() {
        var selectoresDeEtiquetas = [divisor1, divisor2, divisor3, divisor4, divisor5, residuo1, residuo2, residuo3, residuo4, residuo5]
        
        for etiqueta in selectoresDeEtiquetas {
            etiqueta?.keyboardType = .numberPad
        }
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(escondeTeclado))
        
        self.view.addGestureRecognizer(tap)
        
        divisor1.delegate = self
        self.botonRes.addTarget(self, action: #selector(LeerDatos(sender:)), for: .touchUpInside)
        self.botonRes.addTarget(self, action: #selector(Cerebro(sender:)), for: .touchUpInside)
        super.viewDidLoad()
        
        
    }
    
    
    //Funciones externas
    
    func escondeTeclado(){
        self.divisor1.endEditing(true)
        self.divisor2.endEditing(true)
        self.divisor3.endEditing(true)
        self.divisor4.endEditing(true)
        self.divisor5.endEditing(true)
        self.residuo1.endEditing(true)
        self.residuo2.endEditing(true)
        self.residuo3.endEditing(true)
        self.residuo4.endEditing(true)
        self.residuo5.endEditing(true)
    }
    
    func LeerDatos(sender: AnyObject){
        self.div1 = Int(self.divisor1.text!)
        self.div2 = Int(self.divisor2.text!)
        self.div3 = Int(self.divisor3.text!)
        self.div4 = Int(self.divisor4.text!)
        self.div5 = Int(self.divisor5.text!)
        
        self.res1 = Int(self.residuo1.text!)
        self.res2 = Int(self.residuo2.text!)
        self.res3 = Int(self.residuo3.text!)
        self.res4 = Int(self.residuo4.text!)
        self.res5 = Int(self.residuo5.text!)
        
        //------------------------------------------


    }
    func Cerebro(sender: AnyObject){
        
        
        var p1 = 1, p2 = 1, p3 = 1, p4 = 1, p5 = 1, x = 1
        var v = 0,t = 0, m1 = 0, m2 = 0,m3 = 0, m4 = 0, m5 = 0,n1 = 0,n2 = 0,n3 = 0,n4 = 0,n5 = 0
        var val4,val5 : Bool
        
        val4 = Validar(numero: div4)
        val5 = Validar(numero: div5)
        
        if val4 == false {
            
            let m: Int = Int(self.div1 * self.div2)*self.div3
            m1 = m/self.div1
            m2 = m/self.div2
            m3 = m/self.div3
            
            
            repeat {
                
                n1 = ((m1 * p1) - 1) % self.div1
                if n1 != 0{
                    p1 += 1
                }
                
            } while n1 != 0
            
            repeat {
                
                n2 = ((m2 * p2) - 1) % self.div2
                if n2 != 0{
                    p2 += 1
                }
                
            } while n2 != 0
            
            repeat {
                
                n3 = ((m3 * p3) - 1) % self.div3
                if n3 != 0{
                    p3 += 1
                }
                
            } while n3 != 0
            
            
            t = (res1 * m1 * p1) + (res2 * m2 * p2) + (res3 * m3 * p3)
            repeat {
                v = (t - x) % m
                if v != 0 {
                    x += 1
                }
            }while v != 0
            
            restdoPar.text = String(x)
            restdoGen.text = String(x) + " + " + String(m) + " (k)"
            
            
        }else if val4 == true{
            let m: Int = Int(self.div1 * self.div2) * Int(self.div3 * self.div4)
            m1 = m/self.div1
            m2 = m/self.div2
            m3 = m/self.div3
            m4 = m/self.div4
            
            repeat {
                
                n1 = ((m1 * p1) - 1) % self.div1
                if n1 != 0{
                    p1 += 1
                }
                
            } while n1 != 0
            
            repeat {
                
                n2 = ((m2 * p2) - 1) % self.div2
                if n2 != 0{
                    p2 += 1
                }
                
            } while n2 != 0
            
            repeat {
                
                n3 = ((m3 * p3) - 1) % self.div3
                if n3 != 0{
                    p3 += 1
                }
                
            } while n3 != 0
            
            repeat {
                
                n4 = ((m4 * p4) - 1) % self.div4
                if n4 != 0{
                    p4 += 1
                }
                
            } while n4 != 0
            
            t = (res1 * m1 * p1) + (res2 * m2 * p2) + (res3 * m3 * p3) + (res4 * m4 * p4)
            repeat {
                v = (t - x) % m
                if v != 0 {
                    x += 1
                }
            }while v != 0
            
            restdoPar.text = String(x)
            restdoGen.text = String(x) + " + " + String(m) + " (k)"


        }else if val4 && val5 == true{
            
            let m: Int = Int(self.div1 * self.div2) * Int(self.div3 * self.div4) * self.div5
            
            m1 = m/self.div1
            m2 = m/self.div2
            m3 = m/self.div3
            m4 = m/self.div4
            m5 = m/self.div5
            
            repeat {
                
                n1 = ((m1 * p1) - 1) % self.div1
                if n1 != 0{
                    p1 += 1
                }
                
            } while n1 != 0
            
            repeat {
                
                n2 = ((m2 * p2) - 1) % self.div2
                if n2 != 0{
                    p2 += 1
                }
                
            } while n2 != 0
            
            repeat {
                
                n3 = ((m3 * p3) - 1) % self.div3
                if n3 != 0{
                    p3 += 1
                }
                
            } while n3 != 0
            
            repeat {
                
                n4 = ((m4 * p4) - 1) % self.div4
                if n4 != 0{
                    p4 += 1
                }
                
            } while n4 != 0
            
            repeat {
                
                n5 = ((m5 * p5) - 1) % self.div5
                if n5 != 0{
                    p5 += 1
                }
                
            } while n5 != 0
            
            t = (res1 * m1 * p1) + (res2 * m2 * p2) + (res3 * m3 * p3) + (res4 * m4 * p4) + (res5 * m5 * p5)
            repeat {
                v = (t - x) % m
                if v != 0 {
                    x += 1
                }
            }while v != 0
            
            restdoPar.text = String(x)
            restdoGen.text = String(x) + " + " + String(m) + " (k)"
            
            
        
            
        }
    }
        
 
    
    func Validar(numero: Int) -> Bool{
        if numero == 0 {
            return false
        }else {return true}
    }

    
}
    
   
