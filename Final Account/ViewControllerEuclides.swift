//
//  ViewControllerEuclides.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 14/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerEuclides: UIViewController, UITextFieldDelegate{
    
    
    
    @IBOutlet weak var IngresaA: UITextField!
    @IBOutlet weak var IngresaB: UITextField!
    @IBOutlet weak var BotonRes: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var a: Int!
    var b: Int!
    
    override func viewDidLoad() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(escondeTeclado))
        
        self.view.addGestureRecognizer(tap)
        
        self.BotonRes.addTarget(self, action: #selector(LeerDatos(sender:)), for: .touchUpInside)
        
        super.viewDidLoad()
    
    
    }
    func escondeTeclado(){
        self.IngresaA.endEditing(true)
        self.IngresaB.endEditing(true)
    }
    func LeerDatos(sender: AnyObject){
        if !elUsuarioDejoCamposVacios() {
        self.a = Int(self.IngresaA.text!)
        self.b = Int(self.IngresaB.text!)
        
        self.resultLabel.text = "\(Euclides.eFunction(aU: self.a, bU: self.b))"
        } else {
            let alert = UIAlertController(title: "Error", message: "No puedes dejar Campos Vacios", preferredStyle: .alert)
            let action = UIAlertAction(title: "Entendido", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
    }

    func elUsuarioDejoCamposVacios()-> Bool {
        if self.IngresaA.text! == "" || self.IngresaB.text! == "" {
            return true
        } else  {
            return false
        }
    }
    
}
