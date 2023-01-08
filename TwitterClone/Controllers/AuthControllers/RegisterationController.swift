//
//  RegisterationController.swift
//  TwitterClone
//
//  Created by KHALED on 05/01/2023.
//

import UIKit

class RegisterationController: UIViewController {

    //MARK: - Properties
    private let imagePicker = UIImagePickerController()
    
    private let plusPhotoButton: UIButton = {
        let plusPhotoButton = UIButton(type: .system)
        plusPhotoButton.setImage(.plus, for: .normal)
        plusPhotoButton.tintColor = .white
        plusPhotoButton.addTarget(self, action: #selector(handlePlusButton), for: .touchUpInside)
        return plusPhotoButton
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
    
    
    private let fullNameTextField: UITextField = {
        return Utilities().createTextField(placeholder: "FullName")
    }()
    
    private lazy var fullNameContainerView: UIView = {
        return Utilities().createFormItemContainer(icon: .user, textField: fullNameTextField)
    }()
    
    
    private let userNamedTextField: UITextField = {
        return Utilities().createTextField(placeholder: "Username")
    }()
    
    private lazy var userNameContainerView: UIView = {
        return Utilities().createFormItemContainer(icon: .user, textField: userNamedTextField)
    }()
    
    
    
    private let alreadyAccountButton: UIButton = {
        let button = Utilities().attributedButton("Already have an account?", " Login")
        button.addTarget(self, action: #selector(handleShowingLogin), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
      configureUI()
        
    }
}

//MARK: - Helpers
extension RegisterationController {
    
    func configureUI(){
        configureView()
        configureAvatarImageView()
        configureImagePicker()
        configureForm()
        configureAlreadyHaveAccountButton()
    }
    
    func configureView(){
        view.backgroundColor = .red
    }
    
    
    func configureAvatarImageView(){
        view.addSubview(plusPhotoButton)
        plusPhotoButton.setAnchors(top: view.safeAreaLayoutGuide.topAnchor, paddintTop: 10,
                                   centerX: view.centerXAnchor, width: 100, height: 100)
    }
    
    func configureImagePicker(){
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
    }
    
    
    func configureForm (){
        let formStack = UIStackView(arrangedSubviews:  [emailContainerView, passwordContainerView, fullNameContainerView, userNameContainerView])
        formStack.axis = .vertical
        formStack.spacing = 5
        view.addSubview(formStack)
        formStack.setAnchors(top: plusPhotoButton.bottomAnchor, paddintTop: 10,
                             centerX: view.centerXAnchor, width: UIScreen.main.bounds.width*0.9)
    }
    
    
    
    func configureAlreadyHaveAccountButton(){
        view.addSubview(alreadyAccountButton)
        alreadyAccountButton.setAnchors(leading: view.leadingAnchor, paddingLeading: 10,
                                        bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 10,
                                        trailing: view.trailingAnchor, paddingTrailing: 10,
                                        height: 50)
    }
    
    
}


//MARK: - Selectors
extension RegisterationController {
    
    @objc
    func handlePlusButton(){
        present(imagePicker, animated: true)
    }
    
    
    @objc
    func handleShowingLogin(){
        navigationController?.popViewController(animated: true)
    }
    
    
    
}


//MARK: - ImagePickerDelegation
extension RegisterationController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.editedImage] as? UIImage else { return }
        self.plusPhotoButton.setImage(selectedImage.withRenderingMode(.alwaysOriginal), for: .normal)
        picker.dismiss(animated: true)
    }
    
    
}
