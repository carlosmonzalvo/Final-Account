//
//  ViewControllerEnterosyNegativos.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerPositivosyNegativos: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var IngresaA: UITextField!
    @IBOutlet weak var IngresaB: UITextField!
    
    @IBOutlet weak var Positivo1: UILabel!
    @IBOutlet weak var Positivo2: UILabel!
    @IBOutlet weak var Positivo3: UILabel!
    @IBOutlet weak var Positivo4: UILabel!
    @IBOutlet weak var Positivo5: UILabel!
    
    @IBOutlet weak var Negativo1: UILabel!
    @IBOutlet weak var Negativo2: UILabel!
    @IBOutlet weak var Negativo3: UILabel!
    @IBOutlet weak var Negativo4: UILabel!
    @IBOutlet weak var Negativo5: UILabel!
    
    var selectoresDeEtiqueta: [[UILabel]]!
    
    
    @IBOutlet weak var BotonRes: UIButton!
    
    override func viewDidLoad() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(escondeTeclado))
        self.view.addGestureRecognizer(tap)

        self.BotonRes.addTarget(self, action: #selector(leerDatos(sender:)), for: .touchUpInside)
        self.selectoresDeEtiqueta = [[Positivo1, Positivo2, Positivo3, Positivo4, Positivo5], [Negativo1, Negativo2, Negativo3, Negativo4, Negativo5]]
        
        
        
    }
    func escondeTeclado(){
        self.IngresaA.endEditing(true)
        self.IngresaB.endEditing(true)
    }
    
    func leerDatos(sender: AnyObject) {
        
        var arregloResultados = PositivosyNegativos.ejecutarCodigo(aU: Int(self.IngresaA.text!)!, bU: Int(self.IngresaB.text!)!)
        
        
        
        for i in 0..<selectoresDeEtiqueta.count{
            for n in 0..<selectoresDeEtiqueta[0].count{
                for n in 0..<arregloResultados![i].count {
                    (selectoresDeEtiqueta[i])[n].text = "\((arregloResultados![i])[n])"
                
            }
        }
        
        
    }
    }}
