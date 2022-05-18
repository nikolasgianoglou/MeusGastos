//
//  ViewControllerDefault.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 17/05/22.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController{
    var afterHideKeyboard: (()-> Void)?
    var afterShowKeyboard: ((_ heightKeyboardType: CGFloat) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _: NSObjectProtocol = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (notification) in
            guard let value = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
            self.afterShowKeyboard?(value.cgRectValue.height)
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardTypeByTappingOutside))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardTypeByTappingOutside(){
        
    }
}
