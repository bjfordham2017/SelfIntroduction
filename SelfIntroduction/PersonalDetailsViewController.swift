//
//  PersonalDetailsViewController.swift
//  SelfIntroduction
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation
import UIKit

class PersonalDetailsViewController: UIViewController {
    var detailTitle: String! {
        didSet {
            navigationItem.title = detailTitle
        }
    }
    
    var detailText: String!
    
    @IBOutlet var detailView: UITextView!
    
    override func loadView() {
        super.loadView()
        
        detailView.text = detailText
        detailView.isEditable = false
    }
}
