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
  weak var presenter: CreateToDoPresenter?
  func validateToDo(content: String?) {
    if content == nil || (content?.isEmpty)! {
      presenter?.displayErrorMessage(message: "Please input your ToDo!")
      return
    }
  }
  
  func createToDo(content: String) {
    
  }
}
