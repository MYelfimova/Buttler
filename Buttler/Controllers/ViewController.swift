//
//  ViewController.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPlayButton()
    }

    func setUpPlayButton() {
        playButton.layer.borderWidth = 2
        playButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.cornerRadius = 60
        playButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }

}

