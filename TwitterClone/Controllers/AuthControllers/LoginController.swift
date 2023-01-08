//
//  MobileLoginController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class LoginController: UIViewController {
    
    //MARK: - Properties
    private let logoImageView: UIImageView = {
        let logoImageView         = UIImageView()
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.image       = .twitterLogoWhite
        logoImageView.clipsToBounds = true
        return logoImageView
    }()
    
    
    private let emailTextField: UITextField = {
        return Utilities().createTextField(placeholder: "E-mail")
    }()
    
    private lazy var emailContainerView: UIView = {
        return Utilities().createFormItemContainer(icon: .mail, textField: emailTextField)
    }()
    
    private let passowrdTextField: UITextField = {
        return Utilities().createTextField(placeholder: "Password", isSecureTextEntry: true)
    }()
    
    private lazy var passwordContainerView: UIView = {
        return Utilities().createFormItemContainer(icon: .password, textField: passowrdTextField)
    }()
   
    private let loginButton: UIButton = {
        
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.twitterBlue, for: .normal)
        loginButton.titleLabel?.font = .boldSystemFont(ofSize: 17)
        loginButton.backgroundColor = .white
        loginButton.setAnchors(height: 50)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        return loginButton
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton("Don't have an account?", " SignUp")
        button.addTarget(self, action: #selector(handleShowingSignUp), for: .touchUpInside)
        return button
    }()

    
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}

//MARK: - Helpers
extension LoginController {
    func configureUI(){
        configureNavigationBar()
        configureBackground()
        configureLogoImageView()
        configureLoginFieldsStack()
        configureDontHaveAccountButton()
    }
    
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
    }
    
    func configureBackground(){
        view.backgroundColor = .twitterBlue
    }
    
    func configureLogoImageView(){
        view.addSubview(logoImageView)
        logoImageView.setAnchors(top: view.safeAreaLayoutGuide.topAnchor, paddintTop: 15,
                                 centerX: view.centerXAnchor,
                                 width: 200, height: 200)
    }
    
    
    func configureLoginFieldsStack(){
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView, loginButton])
        stack.axis = .vertical
        stack.spacing = 20
        
//        stack.contentMode = .center
        view.addSubview(stack)
        stack.setAnchors(top: logoImageView.bottomAnchor, paddintTop: 5,
                         centerX: view.centerXAnchor, width: UIScreen.main.bounds.width * 0.9)
    }
    
    
    func configureDontHaveAccountButton(){
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.setAnchors(leading:  view.leadingAnchor,  paddingLeading: 10,
                                         bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 10,
                                         trailing: view.trailingAnchor, paddingTrailing: 10, height: 50)
    }
    
}


//MARK: - Selectors
extension LoginController {
    
    @objc
    func handleLogin () {
        print("Login")
    }
    
    
    @objc
    func handleShowingSignUp () {
        let nextController = RegisterationController()
        navigationController?.pushViewController(nextController, animated: true)
    }
    
}
