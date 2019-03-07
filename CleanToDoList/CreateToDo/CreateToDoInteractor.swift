//
//  CreateToDoInteractor.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/6.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import UIKit

protocol CreateToDoInteractorProtocol {
  func validateToDo(content: String?)
  func createToDo(content: String)
}

class CreateToDoInteractor: CreateToDoInteractorProtocol {
  var presenter: CreateToDoPresenter?
  func validateToDo(content: String?) {
    let isValid = content != nil && !(content?.isEmpty)!
    presenter?.enableCreateButton(isValid: isValid)
  }
  
  func createToDo(content: String) {
    
  }
}
