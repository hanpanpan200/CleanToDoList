//
//  ToDoTableViewCell.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/5.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
  
  @IBOutlet weak var label: UILabel!
  
  func setLabe(labelContent: String)
  {
    label.text = labelContent
  }
}
