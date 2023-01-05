//
//  Utilities.swift
//  TwitterClone
//
//  Created by KHALED on 05/01/2023.
//

import UIKit

class Utilities {

    //MARK: - Form Container
    func createFormItemContainer(icon: UIImage, textField: UITextField, viewHeight: CGFloat? = 50) -> UIView {
        //create a custom input field with icon in the left side and underliying line
        let container     = UIView()
        container.backgroundColor = .clear
        container.setAnchors(height: viewHeight)
       
        let iconImageView = UIImageView()
        let undreLineView = UIView()
        [iconImageView, textField, undreLineView].forEach({container.addSubview($0)})
        
        iconImageView.image = icon
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.tintColor = .white
        iconImageView.setAnchors(leading: container.leadingAnchor, paddingLeading: 8,
                                 bottom: container.bottomAnchor,   paddingBottom: 8, width: 24, height: 24)
        
        textField.setAnchors(leading: iconImageView.trailingAnchor, paddingLeading: 8,
                             bottom: container.bottomAnchor, paddingBottom: 8,
                             trailing: container.trailingAnchor, height: 24)
        
        undreLineView.backgroundColor = .white
        undreLineView.setAnchors(leading: container.leadingAnchor, paddingLeading: 8,
                                 bottom: container.bottomAnchor, 
                                 trailing: container.trailingAnchor,
                                 height: 0.75)
        

  
        return container
    }
    

    //MARK: - TextField
    func createTextField(placeholder: String? = "", text: String? = "",
                         font: UIFont? = .systemFont(ofSize: 17),
                         backgroundColor: UIColor? = .clear, textColor: UIColor? = .white, tintColor: UIColor? = .twitterBlue,
                         isSecureTextEntry: Bool? = false) -> UITextField {
        
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white.withAlphaComponent(0.7)])
        textField.text = text
        textField.font = font
    
        textField.backgroundColor = backgroundColor
        textField.tintColor = tintColor
        textField.textColor = textColor
        textField.isSecureTextEntry = isSecureTextEntry!
        
        //To Create Padding
        //        let textFieldPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: textField.frame.height))
        //        textField.leftView =  textFieldPaddingView
        //        textField.leftViewMode = .always
        //
        //        textField.rightView =  textFieldPaddingView
        //        textField.rightViewMode = .always
        //
        //        undreLineView.backgroundColor = .white
        //        undreLineView.setAnchors(top: textField.topAnchor)
        //
                
        
      
        
        return textField
    }
    
    
    //MARK: - Attributed Button
    func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton{
        
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [.foregroundColor: UIColor.white,
                                                                                        .font: UIFont.systemFont(ofSize: 17)])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [.foregroundColor: UIColor.white,
                                                                                   .font: UIFont.boldSystemFont(ofSize: 17)]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }

    
    
    
    
    
    
}
