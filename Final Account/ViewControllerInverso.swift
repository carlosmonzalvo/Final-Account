//
//  ViewControllerInverso.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class UIViewControllerInverso: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Entero: UITextField!
    @IBOutlet weak var Modulo: UITextField!
    
    @IBOutlet weak var Inverso1: UILabel!
    @IBOutlet weak var Inverso2: UILabel!
    @IBOutlet weak var Inverso3: UILabel!
    @IBOutlet weak var Inverso4: UILabel!
    @IBOutlet weak var Inverso5: UILabel!
    @IBOutlet weak var Inverso6: UILabel!
    
    var selectoresDeInverso: [UILabel]!
    var selectoresDeCongruente: [UILabel]!
    var arregloDeSelectores: [[UILabel]]!
    
    @IBOutlet weak var Congruente1: UILabel!
    @IBOutlet weak var Congruente2: UILabel!
    @IBOutlet weak var Congruente3: UILabel!
    @IBOutlet weak var Congruente4: UILabel!
    @IBOutlet weak var Congruente5: UILabel!
    @IBOutlet weak var Congruente6: UILabel!
    
    @IBOutlet weak var BotonRes: UIButton!
    
    var ent: Int!
    var mod: Int!
    
    override func viewDidLoad() {
        
        self.selectoresDeInverso = [Inverso1, Inverso2, Inverso3, Inverso4, Inverso5, Inverso6]

        self.selectoresDeCongruente = [Congruente1, Congruente2, Congruente3, Congruente4, Congruente5, Congruente6]
        
        self.arregloDeSelectores = [selectoresDeInverso, selectoresDeCongruente]
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(escondeTeclado))
        
        self.view.addGestureRecognizer(tap)
        
        self.Entero.delegate = self
        self.Modulo.delegate = self
        
        self.BotonRes.addTarget(self, action: #selector(LeerDatos(sender:)), for: .touchUpInside)
       
        super.viewDidLoad()
        
        
    }
    func escondeTeclado(){
        self.Entero.endEditing(true)
        self.Modulo.endEditing(true)
        
    }
    
    func LeerDatos(sender: AnyObject){
        print("JALA")
        self.ent = Int(self.Entero.text!)
        self.mod = Int(self.Modulo.text!)
        let unInverso = Inverso()
        if let arregloResultado = unInverso.ejecutarAlgoritmo(aU: self.ent, bU: self.mod) {
            for i in 0..<arregloResultado.count {
                for n in 0..<arregloResultado[i].count {
                    (arregloDeSelectores[i])[n].text = "\((arregloResultado[i])[n])"
                }
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Esta funcion solo funciona con numeros primos", preferredStyle: .alert)
            let action = UIAlertAction(title: "Entendido", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
        
    }
    
    
    
}
