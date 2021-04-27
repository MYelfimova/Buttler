//
//  GameViewController.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let game = GameModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        setUpViews()
    }

    func setUpViews() {
        promptLabel.layer.borderWidth = 1
        promptLabel.layer.borderColor = UIColor(named: K.colors.red)!.cgColor
        promptLabel.layer.cornerRadius = 50
        promptLabel.layer.masksToBounds = true
        promptLabel.heightAnchor.constraint(equalToConstant: promptLabel.frame.height+50).isActive = true
    }
}

extension GameViewController: UITableViewDelegate {
    
}

extension GameViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! ActionTableViewCell
        cell.actionLabel.text = "But I must explain to you how all this mistaken idea of denouncing pleasure"
        return cell
    }
    
    
}
