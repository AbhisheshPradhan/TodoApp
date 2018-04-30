//
//  TableViewCell.swift
//  TodoApp
//
//  Created by Abhishesh Pradhan on 28/4/18.
//  Copyright © 2018 Abhishesh Pradhan. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.contentView.backgroundColor = UIColor.white
    }

    @IBOutlet weak var todoLabel: UILabel!
}
