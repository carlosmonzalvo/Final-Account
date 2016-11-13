//
//  ViewController.swift
//  Final Account
//
//  Created by Pedro Carlos Monzalvo Navarro on 09/11/16.
//  Copyright © 2016 Pedro Carlos Monzalvo Navarro. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var DataInput: UITextField!
    
    @IBOutlet weak var botonLector: UIButton!
    
    var userInput: String!
    
    override func viewDidLoad() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(escondeTeclado))
        self.view.addGestureRecognizer(tap)
        DataInput.delegate = self
        self.botonLector.addTarget(self, action: #selector(LeerDatos(sender:)), for: .touchUpInside)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func escondeTeclado(){
        self.DataInput.endEditing(true)
    }
    
    func LeerDatos(sender: AnyObject){
        self.userInput = self.DataInput.text
        print(userInput)
    }

}

