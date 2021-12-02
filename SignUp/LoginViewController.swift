//
//  LoginViewController.swift
//  SignUp
//
//  Created by David Yoon on 2021/12/02.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    
    private let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "ID"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 8
        textField.addLeftPadding()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    private let pwdTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 8
        textField.isSecureTextEntry = true
        textField.addLeftPadding()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.red, for: .normal)
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signUpButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setLayoutConstraint()
        
        
    }
    
    private func addSubviews() {
        view.addSubview(mainImageView)
        view.addSubview(idTextField)
        view.addSubview(pwdTextField)
        view.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(signInButton)
        buttonStackView.addArrangedSubview(signUpButton)

        
    }
    
    private func setLayoutConstraint() {
        mainImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        mainImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        idTextField.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 70).isActive = true
        idTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 50).isActive = true
        idTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -50).isActive = true
        idTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        pwdTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 10).isActive = true
        pwdTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 50).isActive = true
        pwdTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -50).isActive = true
        pwdTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //signUpButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttonStackView.topAnchor.constraint(equalTo: pwdTextField.bottomAnchor, constant: 10).isActive = true
        buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    // MARK: - Handlers
    
    @objc func signUpButtonAction() {
        print("sign up button clicked...")
        
        let joinVC = JoinViewController()
        joinVC.modalPresentationStyle = .fullScreen
        self.present(joinVC, animated: true, completion: nil)
    }

}

// MARK: - Extensions
extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
