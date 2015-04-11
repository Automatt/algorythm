//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by Mathew Spolin on 3/31/15.
//  Copyright (c) 2015 Mathew Spolin. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    var playlist: Playlist?
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    var artistArray: [UILabel] = []
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    @IBOutlet weak var playlistArtist3: UILabel!
    @IBOutlet weak var playlistArtist4: UILabel!
    @IBOutlet weak var playlistArtist5: UILabel!
    @IBOutlet weak var playlistArtist6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistArray = [playlistArtist0, playlistArtist1, playlistArtist2, playlistArtist3, playlistArtist4, playlistArtist5, playlistArtist6]
        
        if playlist != nil {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            
            for index in 0..<playlist!.artists.count {
                let artist = playlist!.artists[index]
                let label = artistArray[index]
                label.text = artist
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
