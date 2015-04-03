//
//  ViewController.swift
//  Algorythm
//
//  Created by Mathew Spolin on 3/31/15.
//  Copyright (c) 2015 Mathew Spolin. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        aButton.setTitle("Press me!", forState: .Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playListDetailController = segue.destinationViewController as PlaylistDetailViewController
            playListDetailController.segueLabelText = "You pressed the button"
        }
    }

}

