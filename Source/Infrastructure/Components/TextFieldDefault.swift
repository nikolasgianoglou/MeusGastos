//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 17/05/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField{
    //MARK: - Constant
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    
    //MARK: - Inits
    init(placeholder: String, keyboardType: UIKeyboardType = .default){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: keyboardType )
    }
    
    init(placeholder: String, isSecureTextentry: Bool){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: .default)
        self.isSecureTextEntry = isSecureTextentry
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeholder: String, keyboardType: UIKeyboardType = .default){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.backgroundColor = .systemGroupedBackground
        self.placeholder = placeholder
        self.keyboardType = keyboardType
    }
    
    //MARK: - Add Padding in textField
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}
