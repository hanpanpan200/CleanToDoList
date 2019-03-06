//
//  CreateToDoPresenter.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/6.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import UIKit

protocol CreateToDoPresenterProtocol {
  func displayErrorMessage(message: String)
  func displayCreateSuccessModal()
}

class CreateToDoPresenter:CreateToDoPresenterProtocol {
  weak var viewController: CreateToDoViewController?
  func displayCreateSuccessModal() {
   
  }
  func displayErrorMessage(message: String) {
    viewController?.showErrorMessage(message: message)
  }
}
