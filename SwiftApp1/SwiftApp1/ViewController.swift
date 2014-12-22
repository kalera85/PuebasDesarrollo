//
//  ViewController.swift
//  SwiftApp1
//
//  Created by ITSOPORTE on 19/12/14.
//  Copyright (c) 2014 ITSOPORTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSaludo: UILabel!
    @IBOutlet weak var lblContador: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ContadorCaracteres(txtNombre: UITextField) {
        
        var contador = 10 - txtNombre.text.utf16Count
        
        lblContador.text = "\(contador)"
        
        if contador < 0
        {
            lblContador.textColor = UIColor.redColor()
        }
        else
        {
            lblContador.textColor = UIColor(red: 0 , green: 0, blue: 0, alpha: 1)
        }
    }

    @IBAction func Saludar(sender: AnyObject) {
        lblSaludo.text = "Hola " + txtName.text
    }
}

