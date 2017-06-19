//
//  ViewController.swift
//  SelfIntroduction
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var selfStats = SelfStats()
    
    override func loadView() {
        super.loadView()
        
        navigationItem.title = selfStats.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "interests"?:
            let interestPage = segue.destination as! PersonalDetailsViewController
            interestPage.detailTitle = "Interests"
            interestPage.detailText = selfStats.interests
        case "hometown"?:
            let hometownPage = segue.destination as! PersonalDetailsViewController
            hometownPage.detailTitle = "Hometown"
            hometownPage.detailText = selfStats.hometown
        case "languages"?:
            let languagesPage = segue.destination as! PersonalDetailsViewController
            languagesPage.detailTitle = "Languages Spoken"
            languagesPage.detailText = selfStats.languages
        case "favoriteShow"?:
            let showPage = segue.destination as! PersonalDetailsViewController
            showPage.detailTitle = "Favorite Show"
            showPage.detailText = selfStats.show
        case "madlib"?:
            break
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
}

