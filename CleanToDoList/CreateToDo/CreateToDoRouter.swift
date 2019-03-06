//
//  CreateToDoRouter.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/6.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import UIKit

protocol CreateToDoRouterProtocal {
  func navigateToList()
}

class CreateToDoRouter: CreateToDoRouterProtocal {
  weak var viewController: CreateToDoViewController?
  func navigateToList() {
    
  }
}
