//
//  JoinViewController.swift
//  SignUp
//
//  Created by David Yoon on 2021/12/02.
//

import UIKit

class JoinViewController: UIViewController {

    // MARK: - Properties
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .lightGray
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "ID"
        textField.addLeftPadding()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 8
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let pwdTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.addLeftPadding()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 8
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let pwdCheckTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Check Password"
        textField.addLeftPadding()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 8
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let introduceTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .yellow
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    lazy var imagePicker: UIImagePickerController = {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        addSubviews()
        setLayoutConstraint()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapProfileImageViewAction))
        //tapGesture.delegate = self
        self.profileImageView.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    
    private func addSubviews() {
        view.addSubview(profileImageView)
        view.addSubview(idTextField)
        view.addSubview(pwdTextField)
        view.addSubview(pwdCheckTextField)
        view.addSubview(introduceTextView)
        
    }
    
    private func setLayoutConstraint() {
        profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        idTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        idTextField.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 5).isActive = true
        idTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -5).isActive = true
        idTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        pwdTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 5).isActive = true
        pwdTextField.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 5).isActive = true
        pwdTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -5).isActive = true
        pwdTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        pwdCheckTextField.topAnchor.constraint(equalTo: pwdTextField.bottomAnchor, constant: 5).isActive = true
        pwdCheckTextField.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 5).isActive = true
        pwdCheckTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -5).isActive = true
        pwdCheckTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        introduceTextView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10).isActive = true
        introduceTextView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        introduceTextView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10).isActive = true
        introduceTextView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
    // MARK: - Handlers
    @objc func tapProfileImageViewAction() {
        print("image view tapped...")
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    

}


// MARK: - Extensions
extension JoinViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage: UIImage = info[.originalImage] as? UIImage {
            self.profileImageView.image = originalImage
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}


//extension JoinViewController: UIGestureRecognizerDelegate {
//
//}
