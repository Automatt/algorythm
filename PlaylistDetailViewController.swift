//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by Mathew Spolin on 3/31/15.
//  Copyright (c) 2015 Mathew Spolin. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    
    var segueLabelText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonPressLabel.text = segueLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
