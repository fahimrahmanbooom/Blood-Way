//
//  MenuViewController.swift
//  Blood Way
//
//  Created by Fahim Rahman on 8/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var requestButton: UIButton!
    @IBOutlet weak var donateButton: UIButton!
    @IBOutlet weak var currentRequestButton: UIButton!
    @IBOutlet weak var acceptRequestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(token!)
        print(pk!)
        customizeButtons()
    }
    
}

// Extention of the Menu View Controller

extension MenuViewController {
    
    // Customizing all the buttons of the main menu view.
    func customizeButtons()  {
        
        requestButton.clipsToBounds = true
        donateButton.clipsToBounds = true
        currentRequestButton.clipsToBounds = true
        acceptRequestButton.clipsToBounds = true
        
        requestButton.layer.borderWidth = 1
        donateButton.layer.borderWidth = 1
        currentRequestButton.layer.borderWidth = 1
        acceptRequestButton.layer.borderWidth = 1
        
        requestButton.layer.cornerRadius = 35
        donateButton.layer.cornerRadius = 35
        currentRequestButton.layer.cornerRadius = 35
        acceptRequestButton.layer.cornerRadius = 35
    }
    
    // Only Vertical Scroll enabled
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            scrollView.contentOffset.x = 0
        }
    }
}
