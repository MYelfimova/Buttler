//
//  ActionTableViewCell.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import UIKit

class ActionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var actionBubble: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
        actionBubble.layer.borderWidth = 1
        actionBubble.layer.borderColor = UIColor(named: K.colors.gray)?.cgColor
        actionBubble.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
