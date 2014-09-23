//
//  ViewController.swift
//  CalculaIMC
//
//  Created by Ney Ricardo on 20/09/14.
//  Copyright (c) 2014 Ney Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputWeight: UITextField!
    
    
    @IBOutlet weak var inputHeight: UITextField!

    @IBOutlet weak var textIMC: UILabel!
    
    @IBOutlet weak var textConselho: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    func getIMC(weight:String, height:String) -> Void {
        var peso = weight.floatValue
        var altura = height.floatValue
        var seuIMC = (peso / (altura * altura))
        var conselho: String = ""
        
        println(weight)
        println(height)
        println(seuIMC)
        
        if (seuIMC < 17) {
            conselho = "Muito abaixo do peso"
        }
        else if (seuIMC >= 17 && seuIMC < 18.49) {
            conselho = "Abaixo do peso"
        }
        else if (seuIMC >= 18.5 && seuIMC < 24.99) {
            conselho = "Peso normal"
        }
        else if (seuIMC >= 25 && seuIMC < 29.99) {
            conselho = "Acima do peso"
        }
        else if (seuIMC >= 30 && seuIMC < 34.99) {
            conselho = "Obesidade I"
        }
        else if (seuIMC >= 35 && seuIMC < 39.99) {
            conselho = "Obesidade II (severa)"
        }
        else if (seuIMC >= 40) {
            conselho = "Obesidade III (mórbida)"
        }
        
        textIMC.text = "\(seuIMC)"
        textConselho.text = conselho
        
    }
    
    @IBAction func calculateIMC() {
        
        if (inputWeight.text == "" || inputHeight.text == "") {
            return
        }
        else {
            var string1 = inputWeight.text
            var string2 = inputHeight.text
            
            getIMC(string1, height:string2)
        }
    }
}

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}