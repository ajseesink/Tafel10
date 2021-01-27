//
//  ViewController.swift
//  Tafel10
//
//  Created by Andre Seesink on 29/12/2020.
//

import Cocoa

class ViewController: NSViewController {
   
    
    @IBOutlet weak var inputVeld: NSTextField!
    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var textLabel2: NSScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // Call this function to change text in label.
    func setLabel(inputText: String){
       var name = textLabel.stringValue
       name = inputText
       textLabel.stringValue = name
         }
    
   // Reset button is pushed here.
    @IBAction func pushedButtonReset(_ sender: Any) {
        setLabel(inputText: "De reset Button is ingedrukt")
        inputVeld.stringValue = ""
        textLabel2.documentView!.selectAll(self)
        textLabel2.documentView!.deleteBackward(self)
    }
    
    // Uitvoeren button is pushed here
    @IBAction func pushedButtonUitvoeren(_ sender: Any) {
        // let invoer = Int(inputVeld.stringValue) ?? 0
        let invoer = Int(inputVeld.stringValue)
        
        if invoer == nil {
          setLabel(inputText: "Geef een getal als waarde in...")
        }
        else {
            // setLabel(inputText: "De tafel van (String(describing: invoer)) wordt uitgevoerd")
            setLabel(inputText: "De tafel van " + String(invoer!) + " wordt uitgevoerd")
          for a in 1...10 {
            // let textname = mySetLabel(tekst: "\(a)", tafel: "\(String(describing: invoer))")
            let textname = mySetLabel(tekst: "\(a)", tafel: String(invoer!))
            textLabel2.documentView!.insertText(textname)
          }
        }
    }
}


