//
//  LoginCoordinator.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 04/05/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
  let navigationController: UINavigationController
  
  init(navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  func start() {
    let viewController = LoginViewController()
    self.navigationController.pushViewController(viewController, animated: true)
  }
}
