//
//  FirstScreen.swift
//  SocialNetworkApp
//
//  Created by Anna Sumire on 27.10.23.
//

import UIKit

class FirstScreen: UIViewController {
    private let signInLabel: UILabel =  {
        let label = UILabel()
        label.text = "Sign In"
        label.font = UIFont(name: "Helvetica-Bold", size: 28)
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "guyimage")
        imageView.layer.cornerRadius = 100
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 16
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 16
        return textField
    }()
    
    private let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Your Password?"
        label.textColor = .gray
        label.font = UIFont(name: "Helvetica-Bold", size: 14)
        label.textAlignment = .right
        return label
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(goToHomePage), for: .touchUpInside)
        let color = UIColor(red: 34/255.0, green: 87/255.0, blue: 122/255.0, alpha: 1.0)
        button.backgroundColor = color
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 30
        return button
    }()
    
    let leftLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    let rightLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private let orLabel: UILabel = {
        let label = UILabel()
        label.text = "Or"
        label.textAlignment = .center
        return label
    }()
    
    let socialMediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 23
        return stackView
    }()
    
    let googleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "google")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        imageView.layer.shadowRadius = 2
        imageView.layer.shadowOpacity = 0.3
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    let facebookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "facebook-2")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        imageView.layer.shadowRadius = 2
        imageView.layer.shadowOpacity = 0.3
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    let linkedinImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "linkedin")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        imageView.layer.shadowRadius = 2
        imageView.layer.shadowOpacity = 0.3
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have an account? Sign Up"
        label.font = UIFont(name: "Helvetica-Bold", size: 15)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(signInLabel)
        view.addSubview(imageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(signInButton)
        view.addSubview(orLabel)
        view.addSubview(leftLineView)
        view.addSubview(rightLineView)
        view.addSubview(socialMediaStackView)
        view.addSubview(signUpLabel)
        
        setSignInLabelConstraints()
        setImageViewConstraints()
        setEmailTextFieldConstraints()
        setPasswordTextFieldConstraints()
        setForgetPasswordLabelConstraints()
        setSignInButtonConstraints()
        setOrLabelConstraints()
        setLeftLineViewConstraints()
        setRightLineViewConstraints()
        setSocialMediaStackViewConstraints()
        setSignUpLabelConstraints()
    }
    
    func setSignInLabelConstraints() {
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        signInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 226).isActive = true
        signInLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15).isActive = true
    }
    
    func setImageViewConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        emailTextField.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 32).isActive = true
    }
    
    func setPasswordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15).isActive = true
    }
    
    func setForgetPasswordLabelConstraints() {
        forgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 0).isActive = true
        forgotPasswordLabel.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        forgotPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
    }
    
    func setSignInButtonConstraints() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.widthAnchor.constraint(equalToConstant: 292).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 32).isActive = true
    }
    
    func setOrLabelConstraints() {
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        orLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 32).isActive = true
    }
    
    func setLeftLineViewConstraints() {
        leftLineView.translatesAutoresizingMaskIntoConstraints = false
        leftLineView.centerYAnchor.constraint(equalTo: orLabel.centerYAnchor).isActive = true
        leftLineView.trailingAnchor.constraint(equalTo: orLabel.leadingAnchor, constant: -5).isActive = true
        leftLineView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        leftLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setRightLineViewConstraints() {
        rightLineView.translatesAutoresizingMaskIntoConstraints = false
        rightLineView.centerYAnchor.constraint(equalTo: orLabel.centerYAnchor).isActive = true
        rightLineView.leadingAnchor.constraint(equalTo: orLabel.trailingAnchor, constant: 5).isActive = true
        rightLineView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        rightLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setSocialMediaStackViewConstraints() {
        socialMediaStackView.addArrangedSubview(googleImageView)
        socialMediaStackView.addArrangedSubview(facebookImageView)
        socialMediaStackView.addArrangedSubview(linkedinImageView)
        
        socialMediaStackView.translatesAutoresizingMaskIntoConstraints = false
        socialMediaStackView.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 20).isActive = true
        socialMediaStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setSignUpLabelConstraints() {
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpLabel.topAnchor.constraint(equalTo: socialMediaStackView.bottomAnchor, constant: 65).isActive = true
    }
    
    @objc func goToHomePage() {
        if let email = emailTextField.text, !email.isEmpty, let password = passwordTextField.text, !password.isEmpty {
            let homePage = HomePage()
            homePage.title = "Home Page"
            navigationController?.pushViewController(homePage, animated: true)
        }
    }
}
