//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 04/05/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
  
  lazy var loginView: LoginView = {
    let view = LoginView()
    view.backgroundColor = .white
    return view
  }()
  
  override func loadView() {
    self.view = loginView
  }
  
  override func viewDidLoad(){
    super.viewDidLoad()
  }
  
}
