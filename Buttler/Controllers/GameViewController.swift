//
//  GameViewController.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import UIKit

class GameViewController: UIViewController {
    
    var popUpShow = true
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var nodeAction = "Day1"
    var nodePrompt = "PromptDay1"
    var currentNode: Node<[String:String]>? {
        return GameModel().tree.find([nodeAction:nodePrompt])
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        nextLevel()
        setUpViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if popUpShow {
            popUpShow = false
            performSegue(withIdentifier: K.popUpSegue, sender: nil)
        }
    }

    func setUpViews() {
        promptLabel.layer.borderWidth = 1
        promptLabel.layer.borderColor = UIColor(named: K.colors.red)!.cgColor
        promptLabel.layer.cornerRadius = 50
        promptLabel.layer.masksToBounds = true
        promptLabel.heightAnchor.constraint(equalToConstant: promptLabel.frame.height+50).isActive = true
    }
    
    func nextLevel() {
        tableView.reloadData()
        promptLabel.text = nodePrompt
    }
}

extension GameViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let node = currentNode {
            if let newNodeKey = node.children[indexPath.row].value.keys.first, let
                newNodeValue = node.children[indexPath.row].value.values.first{
                nodeAction = newNodeKey
                nodePrompt = newNodeValue
                nextLevel()
            }
        }
    }
}

extension GameViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let node = currentNode {
            return node.children.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! ActionTableViewCell
        //cell.actionLabel.text = "But I must explain to you how all this mistaken idea of denouncing pleasure"
        if let node = currentNode {
            cell.actionLabel.text = node.children[indexPath.row].value.keys.first
        }
        return cell
    }
    
    
}
