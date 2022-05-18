//
//  LoginView.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 06/05/22.
//


import UIKit

class LoginView: UIView{
  
//    let titleLabel: LabelDefault = {
//        let lb = LabelDefault(text: "Login")
//        lb.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
//        return lb
//    }()
    
  //MARK: - LabelDefault
  let titleLabel = LabelDefault(text: "Login", font: UIFont.systemFont(ofSize: 25, weight: .semibold))
  let emailLabel = LabelDefault(text: "Email")
  let passwordLabel = LabelDefault(text: "Senha")
  
  //MARK: - TextFieldDefault
  let emailTextField = TextFieldDefault(placeholder: "Informe seu email", keyboardType: .emailAddress)
  let passwordTextField = TextFieldDefault(placeholder:  "Informe sua senha", isSecureTextentry: true)
  
  //MARK: - buttonDefault
  let loginButton = ButtonDefault(title: "Entrar")
    
  let registerButton = ButtonDefault(title: "Registrar")
  //MARK: - Inits
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setVisualEmelements()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setVisualEmelements(){
    setTitle()
    setEmail()
    setPassword()
    setLoginButton()
    setRegisterButton()

  }
  
  private func setTitle(){
    self.addSubview(titleLabel)
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
      titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
    ])
  }
  
  private func setEmail(){
    self.addSubview(emailLabel)
    self.addSubview(emailTextField)
    
    NSLayoutConstraint.activate([
      emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
      emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
      emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
      
      emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
      emailTextField.leftAnchor.constraint(equalTo: emailLabel.leftAnchor),
      emailTextField.rightAnchor.constraint(equalTo: emailLabel.rightAnchor),
      emailTextField.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
  
  private func setPassword(){
    self.addSubview(passwordLabel)
    self.addSubview(passwordTextField)
    
    NSLayoutConstraint.activate([
      passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
      passwordLabel.leftAnchor.constraint(equalTo: emailTextField.leftAnchor),
      passwordLabel.rightAnchor.constraint(equalTo: emailTextField.rightAnchor),
      
      passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
      passwordTextField.leftAnchor.constraint(equalTo: passwordLabel.leftAnchor),
      passwordTextField.rightAnchor.constraint(equalTo: passwordLabel.rightAnchor),
      passwordTextField.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
    
  private func setLoginButton(){
    self.addSubview(loginButton)
    
    NSLayoutConstraint.activate([
      loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
      loginButton.widthAnchor.constraint(equalToConstant: 100),
      loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
    ])
  }
  
    private func setRegisterButton(){
        self.addSubview(registerButton)
        NSLayoutConstraint.activate([
        registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
        registerButton.widthAnchor.constraint(equalToConstant: 100),
        registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}
