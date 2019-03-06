//
//  CreateToDoModels.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/6.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import Foundation

struct CreateToDo {
  struct Request {
    var content: String
  }
  struct Response {
    var id: Int
    var content: String
  }
}

