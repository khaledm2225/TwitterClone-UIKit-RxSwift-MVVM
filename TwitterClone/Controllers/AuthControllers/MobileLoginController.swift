//
//  MobileLoginController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class MobileLoginController: UIViewController {
    
    //MARK: - Properties
    private let logoImageView: UIImageView = {
        let logoImageView         = UIImageView()
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.image       = .twitterLogo
        logoImageView.clipsToBounds = true
        return logoImageView
    }()
    
    
    private lazy var emailContainerView: UIView = {
        
        let myfield = UITextField()
        return Utilities().createInputField(icon: .mail, textField: emailTextField)
    
    }()
    
    private lazy var passwordContainerView: UIView = {
        let myfield = UITextField()
        return Utilities().createInputField(icon: .password, textField: passowrdTextField)
    }()
    
    private let emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "E-mail"
        return emailTextField
    }()
    
    private let passowrdTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Password"
        return emailTextField
    }()
    
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}

//MARK: - Helpers
extension MobileLoginController {
    func configureUI(){
        configureNavigationBar()
        configureBackground()
        configureLogoImageView()
        configureLoginFieldsStack()
    }
    
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
    }
    
    func configureBackground(){
        view.backgroundColor = .purple
    }
    
    func configureLogoImageView(){
        view.addSubview(logoImageView)
        logoImageView.setAnchors(top: view.safeAreaLayoutGuide.topAnchor, paddintTop: 15,
                                 centerX: view.centerXAnchor,
                                 width: 200, height: 200)
    }
    
    
    func configureLoginFieldsStack(){
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        stack.contentMode = .center
        view.addSubview(stack)
        stack.setAnchors(top: logoImageView.bottomAnchor, paddintTop: 5,
                         leading: view.leadingAnchor, paddingLeading: 10,
                         trailing: view.trailingAnchor, paddingTrailing: 10, height: 100)
    }
    
    
}


//MARK: - Selectors
extension MobileLoginController {
    
}
