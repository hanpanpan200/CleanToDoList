//
//  CreateToDoViewController.swift
//  CleanToDoList
//
//  Created by Panpan Han  on 2019/3/6.
//  Copyright © 2019 Panpan Han . All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {
  
  var interactor: CreateToDoInteractorProtocol?
  var router: CreateToDoRouter?
  
  @IBOutlet weak var textField: UITextField!
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = CreateToDoInteractor()
    let presenter = CreateToDoPresenter()
    let router = CreateToDoRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func onEditingEnd(_ sender: Any) {
    interactor?.validateToDo(content: textField.text)
  }
  @IBAction func onCreate(_ sender: Any) {
    interactor?.createToDo(content: textField.text!)
  }
  
  func showErrorMessage(message: String) {
    let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(okAction)
    present(alert, animated: true, completion: nil)
  }
}
