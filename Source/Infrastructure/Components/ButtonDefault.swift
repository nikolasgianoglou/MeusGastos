//
//  ButtonDefault.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 17/05/22.
//

import Foundation
import UIKit

class ButtonDefault: UIButton{
    
    init(title: String){
        super.init(frame: .zero)
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.backgroundColor = .gray
        self.layer.cornerRadius = 5
    }
    
}
