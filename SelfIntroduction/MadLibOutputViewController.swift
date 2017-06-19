//
//  MadLibOutputViewController.swift
//  SelfIntroduction
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation
import UIKit

class MadLibOutputViewController: UIViewController {
    var madLib: MadLib!
    
    @IBOutlet var madLibTextView: UITextView!
    
    override func loadView() {
        super.loadView()
        
        madLibTextView.text = madLib.madLibText
    }
}
