//
//  PopUpViewController.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import UIKit

class PopUpViewController: UIViewController {


    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var letsGoButton: UIButton!
    @IBAction func letsGoButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    func setUpViews() {
        popUpView.layer.borderWidth = 1
        popUpView.layer.borderColor = UIColor.white.cgColor
        popUpView.layer.cornerRadius = 50
        popUpView.layer.masksToBounds = true
        popUpView.heightAnchor.constraint(equalToConstant: popUpView.frame.height+60).isActive = true
        
        
        letsGoButton.layer.borderWidth = 1
        letsGoButton.layer.borderColor = UIColor(named: K.colors.red)!.cgColor
        letsGoButton.layer.cornerRadius = 20
    }

}
