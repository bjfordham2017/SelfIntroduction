//
//  MadLibViewController.swift
//  SelfIntroduction
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation
import UIKit

class MadLibViewController: UIViewController {
    @IBOutlet var firstNoun: UITextField!
    @IBOutlet var verb: UITextField!
    @IBOutlet var secondNoun: UITextField!
    @IBOutlet var adjective: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newMadLib = MadLib(firstNoun: firstNoun.text, verb: verb.text, secondNoun: secondNoun.text, adjective: adjective.text)
        let madLibOutput = segue.destination as! MadLibOutputViewController
        madLibOutput.madLib = newMadLib
    }
}
