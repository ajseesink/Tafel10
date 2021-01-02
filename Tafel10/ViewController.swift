//
//  ViewController.swift
//  Tafel10
//
//  Created by Andre Seesink on 29/12/2020.
//

import Cocoa

class ViewController: NSViewController {
   
    
    @IBOutlet weak var resetButton: NSButton!
    @IBOutlet weak var textLabel: NSTextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
            
        }
    }

   // Reset button is pushed here.
    @IBAction func pushedResetButton(_ sender: Any) {
        // var name = textLabel.stringValue
        // name = "Button Reset is pushed"
        // textLabel.stringValue = name
        // textLabel.stringValue = "Button Reset is pushed"
        setLabel(inputText: "The reset Button is pushed")
    }
    
    // Call this function to change text in label.
    func setLabel(inputText: String){
       var name = textLabel.stringValue
       name = inputText
       textLabel.stringValue = name
         }
    
    @IBAction func pushedButton2(_ sender: Any) {
       // setLabel(inputText: "The Button is pushed")
        let textname = mySetLabel(tekst: "Hello World")
        setLabel(inputText: textname)
    }
    
}


