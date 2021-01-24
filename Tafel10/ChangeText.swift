//
//  ChangeText.swift
//  Tafel10
//
//  Created by Andre Seesink on 30/12/2020.
//

import Foundation

func mySetLabel(tekst: String, tafel: String) -> String {
    var uitkomst : Int
    uitkomst = (Int(tekst) ?? 0 ) * (Int(tafel) ?? 0)

    return "\(tekst) x \(tafel) = \(uitkomst)\n "
}


