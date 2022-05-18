//
//  LoginView.swift
//  MeusGastos
//
//  Created by Nikolas Gianoglou Coelho on 06/05/22.
//


import UIKit

class LoginView: UIView{
  //MARK: - Visual Elements
    
  let titleLabel: UILabel = {
    let lb = UILabel()
    lb.text = "Login"
    lb.translatesAutoresizingMaskIntoConstraints = false
    lb.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
    return lb
  }()
  
  
  let emailLabel: UILabel = {
    let lb = UILabel()
    lb.text = "Email"
    lb.translatesAutoresizingMaskIntoConstraints = false
    return lb
  }()
  
  let emailTextField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.layer.borderColor = UIColor.black.cgColor
    tf.layer.borderWidth = 1
    tf.layer.cornerRadius = 5
    tf.backgroundColor = .systemGroupedBackground
    tf.placeholder = "Informe seu email"
    return tf
  }()
  
  let passwordLabel: UILabel = {
    let lb = UILabel()
    lb.text = "Senha"
    lb.translatesAutoresizingMaskIntoConstraints = false
    return lb
  }()
  
  let passwordTextField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.layer.borderColor = UIColor.black.cgColor
    tf.layer.borderWidth = 1
    tf.layer.cornerRadius = 5
    tf.backgroundColor = .systemGroupedBackground
    tf.placeholder = "Informe sua senha"
    tf.isSecureTextEntry = true
    return tf
  }()
  
  let loginButton: UIButton = {
    let bt = UIButton()
    bt.translatesAutoresizingMaskIntoConstraints = false
    bt.setTitle("Entrar", for: .normal)
    bt.backgroundColor = .gray
    bt.layer.cornerRadius = 5
    return bt
  }()
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
  
}
